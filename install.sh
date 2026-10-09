#!/usr/bin/env bash
# LexUK installer for Claude Code (macOS / Linux)
# Instalator LexUK pentru Claude Code (macOS / Linux)
#
#   curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash
#
# Options / Opțiuni (pass after `bash -s --` when piping / după `bash -s --` când folosești pipe):
#   --project      install into ./.claude/skills (current project only / doar proiectul curent)
#   --dir <path>   install into a custom skills directory / într-un folder de skill-uri ales
#   --uninstall    remove the installed skill / șterge skill-ul instalat
#   --force        replace an existing 'lexuk' folder that is not LexUK / înlocuiește un folder 'lexuk' străin
#   -h, --help     show this help / afișează acest ajutor
#
# Environment / Variabile de mediu:
#   LEXUK_REF          branch, tag or commit to install (default: main)
#   LEXUK_ARCHIVE_URL  full URL of a .tar.gz archive of the repository (overrides LEXUK_REF)

set -euo pipefail

REPO="tiberiugabriel/LexUK"
SKILL_NAME="lexuk"
REF="${LEXUK_REF:-main}"
ARCHIVE_URL="${LEXUK_ARCHIVE_URL:-https://github.com/${REPO}/archive/${REF}.tar.gz}"

TARGET_DIR="${HOME}/.claude/skills"
SCOPE="personal"
UNINSTALL=0
FORCE=0

say()  { printf '%s\n' "$*"; }
fail() { printf 'Error / Eroare: %s\n' "$*" >&2; exit 1; }

usage() {
  sed -n '2,18p' "$0" 2>/dev/null | sed 's/^# \{0,1\}//' || true
  say "See / Vezi: https://github.com/${REPO}#installation"
}

while [ $# -gt 0 ]; do
  case "$1" in
    --project)   TARGET_DIR="$(pwd)/.claude/skills"; SCOPE="project"; shift ;;
    --dir)       [ $# -ge 2 ] || fail "--dir needs a path / --dir are nevoie de o cale"
                 TARGET_DIR="$2"; SCOPE="custom"; shift 2 ;;
    --uninstall) UNINSTALL=1; shift ;;
    --force)     FORCE=1; shift ;;
    -h|--help)   usage; exit 0 ;;
    *)           fail "unknown option / opțiune necunoscută: $1" ;;
  esac
done

DEST="${TARGET_DIR%/}/${SKILL_NAME}"

# Is the existing folder a LexUK install? / Folderul existent e o instalare LexUK?
is_lexuk() {
  [ -f "$1/SKILL.md" ] && grep -q "^name:[[:space:]]*${SKILL_NAME}[[:space:]]*$" "$1/SKILL.md"
}

remove_existing() {
  if [ -L "$DEST" ]; then
    rm "$DEST"                      # symlink: remove the link only / doar linkul
  elif [ -d "$DEST" ]; then
    if ! is_lexuk "$DEST" && [ "$FORCE" -ne 1 ]; then
      fail "$DEST exists and is not LexUK. Use --force to replace it. / $DEST există și nu este LexUK. Folosește --force ca să-l înlocuiești."
    fi
    rm -rf "$DEST"
  elif [ -e "$DEST" ]; then
    fail "$DEST exists and is not a folder / $DEST există și nu este un folder"
  fi
}

if [ "$UNINSTALL" -eq 1 ]; then
  if [ ! -e "$DEST" ] && [ ! -L "$DEST" ]; then
    say "LexUK is not installed in / LexUK nu este instalat în: $TARGET_DIR"
    exit 0
  fi
  remove_existing
  say "LexUK removed from / LexUK a fost șters din: $DEST"
  exit 0
fi

command -v tar >/dev/null 2>&1 || fail "'tar' is required / este necesar 'tar'"

TMP="$(mktemp -d 2>/dev/null || mktemp -d -t lexuk)"
trap 'rm -rf "$TMP"' EXIT

say "Downloading LexUK (${REF}) / Se descarcă LexUK (${REF})..."
if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$ARCHIVE_URL" -o "$TMP/lexuk.tar.gz" || fail "download failed / descărcarea a eșuat: $ARCHIVE_URL"
elif command -v wget >/dev/null 2>&1; then
  wget -qO "$TMP/lexuk.tar.gz" "$ARCHIVE_URL" || fail "download failed / descărcarea a eșuat: $ARCHIVE_URL"
else
  fail "'curl' or 'wget' is required / este necesar 'curl' sau 'wget'"
fi

mkdir -p "$TMP/src"
tar -xzf "$TMP/lexuk.tar.gz" -C "$TMP/src" || fail "could not extract the archive / arhiva nu a putut fi extrasă"

SRC="$(find "$TMP/src" -type f -path "*/skills/${SKILL_NAME}/SKILL.md" | head -n 1)"
[ -n "$SRC" ] || fail "skills/${SKILL_NAME}/SKILL.md not found in the archive / nu a fost găsit în arhivă"
SRC="$(dirname "$SRC")"
is_lexuk "$SRC" || fail "the downloaded skill is not named '${SKILL_NAME}' / skill-ul descărcat nu se numește '${SKILL_NAME}'"

mkdir -p "$TARGET_DIR"
remove_existing
cp -R "$SRC" "$DEST"

say ""
say "✔ LexUK installed (${SCOPE}) / LexUK instalat (${SCOPE}): $DEST"
say ""
say "Next / Pasul următor:"
say "  • Open a new Claude Code session and type /lexuk"
say "    Deschide o sesiune nouă de Claude Code și scrie /lexuk"
say "  • Update: run this command again / Actualizare: rulează din nou această comandă"
say "  • Uninstall / Dezinstalare: ... | bash -s -- --uninstall"
say ""
say "LexUK provides informational guidance, not legal, tax or accounting advice."
say "LexUK oferă orientare informativă, nu consultanță juridică, fiscală sau contabilă."
