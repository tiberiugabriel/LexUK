#!/usr/bin/env bash
# Rebuilds dist/lexuk.skill (a ZIP containing the lexuk/ folder) from skills/lexuk/.
# Reconstruiește dist/lexuk.skill (un ZIP care conține folderul lexuk/) din skills/lexuk/.
#
# Usage / Utilizare:  ./scripts/package.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$ROOT/skills"
SKILL_DIR="$SKILLS_DIR/lexuk"
OUT="$ROOT/dist/lexuk.skill"

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "Error: $SKILL_DIR/SKILL.md not found / nu a fost găsit." >&2
  exit 1
fi

# The folder name must match the skill name in the SKILL.md frontmatter.
# Numele folderului trebuie să coincidă cu numele skill-ului din antetul SKILL.md.
NAME="$(sed -n 's/^name:[[:space:]]*//p' "$SKILL_DIR/SKILL.md" | head -n 1 | tr -d '[:space:]')"
if [ "$NAME" != "lexuk" ]; then
  echo "Error: skill name in SKILL.md is '$NAME', expected 'lexuk'." >&2
  echo "Eroare: numele din SKILL.md este '$NAME', se aștepta 'lexuk'." >&2
  exit 1
fi

if ! command -v zip >/dev/null 2>&1; then
  echo "Error: 'zip' is not installed / nu este instalat." >&2
  exit 1
fi

mkdir -p "$ROOT/dist"
rm -f "$OUT"

# Zip from skills/ so the archive root is lexuk/ (required by the Claude app upload).
# Arhivăm din skills/ ca rădăcina arhivei să fie lexuk/ (cerință pentru upload în aplicația Claude).
cd "$SKILLS_DIR"
zip -r -q "$OUT" lexuk -x '*.DS_Store' -x '__MACOSX/*'

echo "Built / Construit: $OUT"
unzip -l "$OUT" | tail -n 1
