# LexUK

LexUK is a Claude skill for **e-commerce, online platform and data protection compliance in the United Kingdom**, including the **UK-EU interface** (selling into the EU, Northern Ireland under the Windsor Framework, UK-EU data flows, post-Brexit divergence). It works like a team of specialists (solicitor, tax adviser, DPO, security, e-commerce compliance, customs and product compliance): it figures out your role, asks the questions you didn't think to ask, and **verifies on official sources that the law it relies on is in force and commenced** before answering.

> ⚠️ **LexUK provides informational guidance, not legal, tax or accounting advice.** It does not replace a solicitor, tax adviser, chartered accountant or DPO. Always confirm important decisions with a qualified professional.

It is the UK companion of [LexRO](https://github.com/tiberiugabriel/LexRO) (Romania + EU).

## What it covers

- Consumer law: Consumer Rights Act 2015, Consumer Contracts Regulations 2013, DMCC Act 2024 (unfair practices, fake reviews, drip pricing, subscriptions), pricing, terms and conditions, CMA enforcement
- Platforms and marketplaces: Online Safety Act 2023, P2B, hosting liability, platform reporting to HMRC
- Products and imports: General Product Safety Regulations 2005, Product Regulation and Metrology Act 2025, UKCA/CE, sector rules, customs, packaging EPR, WEEE
- Data protection: UK GDPR, Data Protection Act 2018, Data (Use and Access) Act 2025, PECR (cookies, email/SMS marketing), ICO
- Tax: VAT, overseas sellers, low-value imports, online marketplaces as deemed suppliers, Making Tax Digital
- Payments: Payment Services Regulations, e-money, BNPL regulation, crypto
- Security and AI: NIS Regulations, Cyber Security and Resilience Bill, PSTI (connectable products), UK approach to AI
- Intellectual property, competition, advertising (ASA/CAP Code, influencers, green claims)
- **UK-EU interface**: when EU law also applies (EU GDPR, EU consumer law, DSA, GPSR, EU VAT/IOSS, AI Act, Accessibility Act), Northern Ireland, adequacy, EU/UK representatives

## How it works

1. **Classifies** your business, role, UK jurisdiction (England and Wales / Scotland / Northern Ireland) and EU nexus, and asks you to confirm.
2. **Prioritised intake**: a few questions at a time, critical ones first.
3. **Detects hidden domains** (e.g. "we ship to Northern Ireland" triggers EU goods rules and XI VAT; "users can leave reviews" may trigger the Online Safety Act and the DMCC fake reviews rules).
4. **Live verification** on official sources (legislation.gov.uk, UK Parliament Bills, GOV.UK, HMRC, ICO, CMA, Ofcom, FCA, OPSS, ASA, case law; EUR-Lex for the EU side). Checks commencement, extent and EU-only rules. Anything it could not verify is marked **UNVERIFIED**.
5. **Answers** with confidence levels (GREEN / YELLOW / ORANGE / RED), separating legislation, official guidance, case law and its own interpretation, and keeping UK and EU conclusions apart.
6. **Escalates** to the right type of specialist when needed, and can prepare a file for them.

It always **answers in the language you write in** (English, Romanian or other languages).

## Requirements

- A Claude account with **skills** support (claude.ai web/desktop app, or Claude Code).
- **Web search / web fetch enabled**. Without web access the skill still works, but every legal statement is marked UNVERIFIED.
- In the Claude app, **Code execution and file creation** must be enabled (skills need it).

## Installation

**Quick install for Claude Code:** `npx skills add tiberiugabriel/LexUK -g -a claude-code` or `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash`. Details below.

The ready-to-upload package is **`dist/lexuk.skill`** (a ZIP archive containing the `lexuk/` folder).

### Option A: Claude app (claude.ai web or desktop)

**Free, Pro, Max:**
1. Download [`dist/lexuk.skill`](https://github.com/tiberiugabriel/LexUK/raw/main/dist/lexuk.skill). If your browser or the upload dialog requires a `.zip` file, rename it to `lexuk.zip`.
2. Go to **Settings → Capabilities** and turn on **Code execution and file creation**.
3. Go to **Customize → Skills**, click **+**, then **+ Create skill → Upload a skill**.
4. Upload the file.
5. Make sure **lexuk** is toggled on in your skills list.

**Team, Enterprise:** an owner must first enable **Code execution and file creation** and **Skills** in **Organization settings → Plugins & skills → Policy**. Then follow steps 3–5 above.

Menu names can change between app versions; see Anthropic's article [Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude) for the current steps.

### Option B: Claude Code

Skills installed in the Claude app are **not** synced to Claude Code; install them separately. Claude Code reads personal skills from `~/.claude/skills/<skill-name>/SKILL.md` (all projects) and project skills from `.claude/skills/<skill-name>/SKILL.md` (that project only). See the [Claude Code skills docs](https://code.claude.com/docs/en/skills).

#### B1. One command (recommended)

**With the skills CLI** (needs [Node.js](https://nodejs.org)):

```bash
npx skills add tiberiugabriel/LexUK -g -a claude-code
```

- `-g` installs for your user (all projects). Without it, the skill goes into the current project's `.claude/skills/`.
- `-a claude-code` targets Claude Code. Add `-y` to skip the confirmation prompts.
- The [skills CLI](https://github.com/vercel-labs/skills) is a third-party tool by Vercel Labs and also supports other coding agents.

**With the install script** (no Node.js needed):

macOS / Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash
```

Windows (PowerShell):

```powershell
irm https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.ps1 | iex
```

The script downloads the repository from GitHub, copies `skills/lexuk` to `~/.claude/skills/lexuk` and replaces an older LexUK install if there is one. Options:

| Option | macOS / Linux | Windows |
|---|---|---|
| Current project only | `curl -fsSL …/install.sh \| bash -s -- --project` | `& ([scriptblock]::Create((irm …/install.ps1))) -Project` |
| Custom folder | `… \| bash -s -- --dir <path>` | `… -Dir <path>` |
| Uninstall | `… \| bash -s -- --uninstall` | `… -Uninstall` |
| Specific version | `… \| LEXUK_REF=<tag or branch> bash` | `$env:LEXUK_REF="<tag or branch>"` before running |

(`…` stands for `https://raw.githubusercontent.com/tiberiugabriel/LexUK/main`.)

Piping a script from the internet into your shell runs it with your permissions. If you prefer, open [`install.sh`](install.sh) or [`install.ps1`](install.ps1) first and read it, or use the manual method below.

#### B2. Manual

**macOS / Linux (personal, all projects):**

```bash
mkdir -p ~/.claude/skills
unzip -o ~/Downloads/lexuk.skill -d ~/.claude/skills/
ls ~/.claude/skills/lexuk    # should list SKILL.md and references/
```

**Windows (PowerShell, personal):**

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills" | Out-Null
Copy-Item "$env:USERPROFILE\Downloads\lexuk.skill" "$env:TEMP\lexuk.zip"
Expand-Archive "$env:TEMP\lexuk.zip" -DestinationPath "$env:USERPROFILE\.claude\skills" -Force
Get-ChildItem "$env:USERPROFILE\.claude\skills\lexuk"
```

**From a clone of this repository:**

```bash
git clone https://github.com/tiberiugabriel/LexUK.git
cp -R LexUK/skills/lexuk ~/.claude/skills/lexuk
```

To make `git pull` update the installed skill automatically, use a symbolic link instead of a copy:

```bash
ln -s "$(pwd)/LexUK/skills/lexuk" ~/.claude/skills/lexuk
```

**Project-only:** copy the `skills/lexuk/` folder to `.claude/skills/lexuk/` inside your project.

Claude Code watches the skills folders, so changes usually apply without a restart. If `~/.claude/skills` did not exist when the session started, restart Claude Code.

### Option C: Claude API

The skill follows the Agent Skills format and can be used with the Claude API. See the [Agent Skills documentation](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview).

## Usage

- **Explicit trigger:** start your message with **`/lexuk`**.
  - `/lexuk I run a UK marketplace and some sellers ship from China. What are my obligations?`
  - `/lexuk` alone: it asks what you need (question, audit, document, file for a specialist, urgent incident).
- **In Claude Code**, `/lexuk` is also a native slash command (the skill name becomes the command).
- **Automatic trigger:** it also activates when you ask about these topics without the command. Very short questions may not trigger it; use `/lexuk` to be sure.
- **With LexRO installed too:** use `/lexuk` or `/lexro` to pick the jurisdiction explicitly when a question could fit both.

Example requests:
- "Can I set Google Analytics without consent now that the Data (Use and Access) Act is in force?"
- "Audit my checkout for drip pricing and the DMCC Act."
- "Write the terms and conditions for my UK online shop that also ships to Ireland."
- "We had a data breach this morning. What do I do?"

## Updating and uninstalling

- **Claude app:** delete the old skill in **Customize → Skills**, then upload the new `lexuk.skill`.
- **Claude Code:** run the same install command again (`npx skills add …` or the install script). If you installed manually, replace the folder, or `git pull` if you used a symbolic link.
- **Uninstall from Claude Code:** `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash -s -- --uninstall` (or `-Uninstall` with `install.ps1`), or simply delete `~/.claude/skills/lexuk`.
- **Uninstall from the Claude app:** delete the skill in **Customize → Skills**.

## Repository structure

```
LexUK/
├── README.md                 # this file
├── LICENSE                   # Apache 2.0 with Commons Clause
├── install.sh                # one-command installer for Claude Code (macOS / Linux)
├── install.ps1               # one-command installer for Claude Code (Windows)
├── skills/
│   └── lexuk/                # the skill
│       ├── SKILL.md          # workflow, core rules, /lexuk trigger
│       ├── LICENSE.txt       # copy of LICENSE, shipped with the skill
│       └── references/       # intake, domain files (incl. UK-EU interface), sources, escalation, formats
├── dist/
│   └── lexuk.skill           # ready-to-upload package for the Claude app (ZIP)
└── scripts/
    └── package.sh            # rebuilds dist/lexuk.skill
```

## Rebuilding the package

After editing files in `skills/lexuk/`, rebuild the package:

```bash
./scripts/package.sh
```

## Limitations

- `skills/lexuk/references/acts-registry.md` is a **starting map compiled by an AI model, not verified act by act**. Each entry has a confidence level (H / M / ID?) and an extent. A few fast-moving items (DMCC subscriptions, DUAA commencement, EU adequacy renewal, BNPL regulation, Cyber Security and Resilience Bill, PRaM Act) were spot-checked against secondary sources in October 2026. The skill re-verifies acts live, but correcting the registry improves results.
- The URLs of official sources are base addresses; verify them once.
- The skill can be wrong. UK law in this area is mid-reform (DMCC Act, DUAA, product safety, cyber), and EU law keeps moving in parallel.

## License

LexUK is licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) with the [Commons Clause](https://commonsclause.com/) condition. See [`LICENSE`](LICENSE).

In plain terms:

- **You can** use LexUK for free, including inside your own business (for example, to check your own shop's compliance), modify it and share it.
- **You cannot** sell it: you may not charge for LexUK itself, a modified version of it, or a product or service (including hosting, consulting or support) whose value comes entirely or substantially from LexUK.
- When you share it, keep the `LICENSE` file and the copyright notice.

This summary is for convenience only; the `LICENSE` file is the binding text. For uses not covered, contact the author.
