# LexUK installer for Claude Code (Windows PowerShell)
# Instalator LexUK pentru Claude Code (Windows PowerShell)
#
#   irm https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.ps1 | iex
#
# With options / Cu opțiuni:
#   & ([scriptblock]::Create((irm https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.ps1))) -Project
#
# Options / Opțiuni:
#   -Project      install into .\.claude\skills (current project only / doar proiectul curent)
#   -Dir <path>   install into a custom skills directory / într-un folder de skill-uri ales
#   -Uninstall    remove the installed skill / șterge skill-ul instalat
#   -Force        replace an existing 'lexuk' folder that is not LexUK / înlocuiește un folder 'lexuk' străin
#
# Environment / Variabile de mediu:
#   LEXUK_REF          branch, tag or commit to install (default: main)
#   LEXUK_ARCHIVE_URL  full URL of a .zip archive of the repository (overrides LEXUK_REF)

param(
    [switch]$Project,
    [string]$Dir,
    [switch]$Uninstall,
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$Repo      = 'tiberiugabriel/LexUK'
$SkillName = 'lexuk'
$Ref       = if ($env:LEXUK_REF) { $env:LEXUK_REF } else { 'main' }
$ArchiveUrl = if ($env:LEXUK_ARCHIVE_URL) { $env:LEXUK_ARCHIVE_URL } else { "https://github.com/$Repo/archive/$Ref.zip" }

if ($Dir) {
    $TargetDir = $Dir; $Scope = 'custom'
} elseif ($Project) {
    $TargetDir = Join-Path (Get-Location) '.claude\skills'; $Scope = 'project'
} else {
    $TargetDir = Join-Path $HOME '.claude\skills'; $Scope = 'personal'
}
$Dest = Join-Path $TargetDir $SkillName

function Fail([string]$Message) {
    Write-Host "Error / Eroare: $Message" -ForegroundColor Red
    throw $Message
}

function Test-LexUK([string]$Path) {
    $skillMd = Join-Path $Path 'SKILL.md'
    if (-not (Test-Path $skillMd -PathType Leaf)) { return $false }
    return [bool](Select-String -Path $skillMd -Pattern "^name:\s*$SkillName\s*$" -Quiet)
}

function Remove-Existing {
    if (-not (Test-Path $Dest)) { return }
    $item = Get-Item $Dest -Force
    if ($item.LinkType) {
        # symlink/junction: remove the link only / doar linkul
        $item.Delete()
        return
    }
    if (-not $item.PSIsContainer) { Fail "$Dest exists and is not a folder / $Dest există și nu este un folder" }
    if (-not (Test-LexUK $Dest) -and -not $Force) {
        Fail "$Dest exists and is not LexUK. Use -Force to replace it. / $Dest există și nu este LexUK. Folosește -Force ca să-l înlocuiești."
    }
    Remove-Item $Dest -Recurse -Force
}

if ($Uninstall) {
    if (-not (Test-Path $Dest)) {
        Write-Host "LexUK is not installed in / LexUK nu este instalat în: $TargetDir"
        return
    }
    Remove-Existing
    Write-Host "LexUK removed from / LexUK a fost șters din: $Dest"
    return
}

$Tmp = Join-Path ([System.IO.Path]::GetTempPath()) ("lexuk-" + [System.Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $Tmp -Force | Out-Null

try {
    Write-Host "Downloading LexUK ($Ref) / Se descarcă LexUK ($Ref)..."
    $zip = Join-Path $Tmp 'lexuk.zip'
    try {
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
    } catch { }
    try {
        Invoke-WebRequest -Uri $ArchiveUrl -OutFile $zip -UseBasicParsing
    } catch {
        Fail "download failed / descărcarea a eșuat: $ArchiveUrl"
    }

    $src = Join-Path $Tmp 'src'
    Expand-Archive -Path $zip -DestinationPath $src -Force

    $skillMd = Get-ChildItem -Path $src -Recurse -Filter 'SKILL.md' -File |
        Where-Object { $_.Directory.Name -eq $SkillName -and $_.Directory.Parent.Name -eq 'skills' } |
        Select-Object -First 1
    if (-not $skillMd) { Fail "skills/$SkillName/SKILL.md not found in the archive / nu a fost găsit în arhivă" }
    $skillSrc = $skillMd.Directory.FullName
    if (-not (Test-LexUK $skillSrc)) { Fail "the downloaded skill is not named '$SkillName' / skill-ul descărcat nu se numește '$SkillName'" }

    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
    Remove-Existing
    Copy-Item -Path $skillSrc -Destination $Dest -Recurse

    Write-Host ""
    Write-Host "LexUK installed ($Scope) / LexUK instalat ($Scope): $Dest" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next / Pasul următor:"
    Write-Host "  - Open a new Claude Code session and type /lexuk"
    Write-Host "    Deschide o sesiune nouă de Claude Code și scrie /lexuk"
    Write-Host "  - Update: run this command again / Actualizare: rulează din nou această comandă"
    Write-Host ""
    Write-Host "LexUK provides informational guidance, not legal, tax or accounting advice."
    Write-Host "LexUK oferă orientare informativă, nu consultanță juridică, fiscală sau contabilă."
}
finally {
    Remove-Item $Tmp -Recurse -Force -ErrorAction SilentlyContinue
}
