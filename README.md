# LexUK

**[English](#english) · [Română](#română)**

---

## English

LexUK is a Claude skill for **e-commerce, online platform and data protection compliance in the United Kingdom**, including the **UK-EU interface** (selling into the EU, Northern Ireland under the Windsor Framework, UK-EU data flows, post-Brexit divergence). It works like a team of specialists (solicitor, tax adviser, DPO, security, e-commerce compliance, customs and product compliance): it figures out your role, asks the questions you didn't think to ask, and **verifies on official sources that the law it relies on is in force and commenced** before answering.

> ⚠️ **LexUK provides informational guidance, not legal, tax or accounting advice.** It does not replace a solicitor, tax adviser, chartered accountant or DPO. Always confirm important decisions with a qualified professional.

It is the UK companion of [LexRO](https://github.com/tiberiugabriel/LexRO) (Romania + EU).

### What it covers

- Consumer law: Consumer Rights Act 2015, Consumer Contracts Regulations 2013, DMCC Act 2024 (unfair practices, fake reviews, drip pricing, subscriptions), pricing, terms and conditions, CMA enforcement
- Platforms and marketplaces: Online Safety Act 2023, P2B, hosting liability, platform reporting to HMRC
- Products and imports: General Product Safety Regulations 2005, Product Regulation and Metrology Act 2025, UKCA/CE, sector rules, customs, packaging EPR, WEEE
- Data protection: UK GDPR, Data Protection Act 2018, Data (Use and Access) Act 2025, PECR (cookies, email/SMS marketing), ICO
- Tax: VAT, overseas sellers, low-value imports, online marketplaces as deemed suppliers, Making Tax Digital
- Payments: Payment Services Regulations, e-money, BNPL regulation, crypto
- Security and AI: NIS Regulations, Cyber Security and Resilience Bill, PSTI (connectable products), UK approach to AI
- Intellectual property, competition, advertising (ASA/CAP Code, influencers, green claims)
- **UK-EU interface**: when EU law also applies (EU GDPR, EU consumer law, DSA, GPSR, EU VAT/IOSS, AI Act, Accessibility Act), Northern Ireland, adequacy, EU/UK representatives

### How it works

1. **Classifies** your business, role, UK jurisdiction (England and Wales / Scotland / Northern Ireland) and EU nexus, and asks you to confirm.
2. **Prioritised intake**: a few questions at a time, critical ones first.
3. **Detects hidden domains** (e.g. "we ship to Northern Ireland" triggers EU goods rules and XI VAT; "users can leave reviews" may trigger the Online Safety Act and the DMCC fake reviews rules).
4. **Live verification** on official sources (legislation.gov.uk, UK Parliament Bills, GOV.UK, HMRC, ICO, CMA, Ofcom, FCA, OPSS, ASA, case law; EUR-Lex for the EU side). Checks commencement, extent and EU-only rules. Anything it could not verify is marked **UNVERIFIED**.
5. **Answers** with confidence levels (GREEN / YELLOW / ORANGE / RED), separating legislation, official guidance, case law and its own interpretation, and keeping UK and EU conclusions apart.
6. **Escalates** to the right type of specialist when needed, and can prepare a file for them.

It always **answers in the language you write in** (English, Romanian or other languages).

### Requirements

- A Claude account with **skills** support (claude.ai web/desktop app, or Claude Code).
- **Web search / web fetch enabled**. Without web access the skill still works, but every legal statement is marked UNVERIFIED.
- In the Claude app, **Code execution and file creation** must be enabled (skills need it).

### Installation

**Quick install for Claude Code:** `npx skills add tiberiugabriel/LexUK -g -a claude-code` or `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash`. Details below.

The ready-to-upload package is **`dist/lexuk.skill`** (a ZIP archive containing the `lexuk/` folder).

#### Option A: Claude app (claude.ai web or desktop)

**Free, Pro, Max:**
1. Download [`dist/lexuk.skill`](https://github.com/tiberiugabriel/LexUK/raw/main/dist/lexuk.skill). If your browser or the upload dialog requires a `.zip` file, rename it to `lexuk.zip`.
2. Go to **Settings → Capabilities** and turn on **Code execution and file creation**.
3. Go to **Customize → Skills**, click **+**, then **+ Create skill → Upload a skill**.
4. Upload the file.
5. Make sure **lexuk** is toggled on in your skills list.

**Team, Enterprise:** an owner must first enable **Code execution and file creation** and **Skills** in **Organization settings → Plugins & skills → Policy**. Then follow steps 3–5 above.

Menu names can change between app versions; see Anthropic's article [Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude) for the current steps.

#### Option B: Claude Code

Skills installed in the Claude app are **not** synced to Claude Code; install them separately. Claude Code reads personal skills from `~/.claude/skills/<skill-name>/SKILL.md` (all projects) and project skills from `.claude/skills/<skill-name>/SKILL.md` (that project only). See the [Claude Code skills docs](https://code.claude.com/docs/en/skills).

##### B1. One command (recommended)

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

##### B2. Manual

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

#### Option C: Claude API

The skill follows the Agent Skills format and can be used with the Claude API. See the [Agent Skills documentation](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview).

### Usage

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

### Updating and uninstalling

- **Claude app:** delete the old skill in **Customize → Skills**, then upload the new `lexuk.skill`.
- **Claude Code:** run the same install command again (`npx skills add …` or the install script). If you installed manually, replace the folder, or `git pull` if you used a symbolic link.
- **Uninstall from Claude Code:** `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash -s -- --uninstall` (or `-Uninstall` with `install.ps1`), or simply delete `~/.claude/skills/lexuk`.
- **Uninstall from the Claude app:** delete the skill in **Customize → Skills**.

### Repository structure

```
LexUK/
├── README.md                 # this file (EN + RO)
├── install.sh                # one-command installer for Claude Code (macOS / Linux)
├── install.ps1               # one-command installer for Claude Code (Windows)
├── skills/
│   └── lexuk/                # the skill
│       ├── SKILL.md          # workflow, core rules, /lexuk trigger
│       └── references/       # intake, domain files (incl. UK-EU interface), sources, escalation, formats
├── dist/
│   └── lexuk.skill           # ready-to-upload package for the Claude app (ZIP)
└── scripts/
    └── package.sh            # rebuilds dist/lexuk.skill
```

### Rebuilding the package

After editing files in `skills/lexuk/`, rebuild the package:

```bash
./scripts/package.sh
```

### Limitations

- `skills/lexuk/references/acts-registry.md` is a **starting map compiled by an AI model, not verified act by act**. Each entry has a confidence level (H / M / ID?) and an extent. A few fast-moving items (DMCC subscriptions, DUAA commencement, EU adequacy renewal, BNPL regulation, Cyber Security and Resilience Bill, PRaM Act) were spot-checked against secondary sources in October 2026. The skill re-verifies acts live, but correcting the registry improves results.
- The URLs of official sources are base addresses; verify them once.
- The skill can be wrong. UK law in this area is mid-reform (DMCC Act, DUAA, product safety, cyber), and EU law keeps moving in parallel.

---

## Română

LexUK este un skill Claude pentru **conformitatea în comerțul electronic, platformele online și protecția datelor în Regatul Unit**, inclusiv **interfața UK-UE** (vânzări în UE, Irlanda de Nord prin Windsor Framework, fluxuri de date UK-UE, divergențele de după Brexit). Funcționează ca o echipă de specialiști (solicitor, consultant fiscal, DPO, securitate, conformitate e-commerce, vamă și conformitatea produselor): îți stabilește rolul, îți pune întrebările la care nu te-ai gândit și **verifică pe surse oficiale că legea pe care se bazează e în vigoare și pusă în aplicare** înainte să răspundă.

> ⚠️ **LexUK oferă orientare informativă, nu consultanță juridică, fiscală sau contabilă.** Nu înlocuiește un solicitor, un consultant fiscal, un expert contabil sau un DPO. Confirmă întotdeauna deciziile importante cu un specialist calificat.

Este perechea pentru UK a skill-ului [LexRO](https://github.com/tiberiugabriel/LexRO) (România + UE).

### Ce acoperă

- Dreptul consumatorului: Consumer Rights Act 2015, Consumer Contracts Regulations 2013, DMCC Act 2024 (practici incorecte, recenzii false, drip pricing, abonamente), prețuri, termeni și condiții, aplicarea legii de către CMA
- Platforme și marketplace-uri: Online Safety Act 2023, P2B, răspunderea furnizorului de hosting, raportarea vânzătorilor către HMRC
- Produse și import: General Product Safety Regulations 2005, Product Regulation and Metrology Act 2025, UKCA/CE, reguli sectoriale, vamă, EPR ambalaje, WEEE
- Protecția datelor: UK GDPR, Data Protection Act 2018, Data (Use and Access) Act 2025, PECR (cookies, marketing prin email/SMS), ICO
- Fiscal: TVA, vânzători străini, importuri de valoare mică, marketplace-uri ca furnizor presupus, Making Tax Digital
- Plăți: Payment Services Regulations, monedă electronică, reglementarea BNPL, cripto
- Securitate și AI: NIS Regulations, Cyber Security and Resilience Bill, PSTI (produse conectabile), abordarea UK privind AI
- Proprietate intelectuală, concurență, publicitate (ASA/CAP Code, influenceri, afirmații ecologice)
- **Interfața UK-UE**: când se aplică și dreptul UE (GDPR UE, dreptul consumatorului din UE, DSA, GPSR, TVA UE/IOSS, AI Act, Accessibility Act), Irlanda de Nord, decizii de adecvare, reprezentanți în UE/UK

### Cum funcționează

1. **Clasifică** afacerea, rolul, jurisdicția din UK (Anglia și Țara Galilor / Scoția / Irlanda de Nord) și legătura cu UE, și îți cere confirmarea.
2. **Intake prioritizat**: câteva întrebări pe rând, întâi cele critice.
3. **Detectează domeniile ascunse** (de exemplu, „livrăm în Irlanda de Nord" declanșează regulile UE pentru bunuri și TVA XI; „clienții pot lăsa recenzii" poate declanșa Online Safety Act și regulile DMCC privind recenziile false).
4. **Verificare live** pe surse oficiale (legislation.gov.uk, UK Parliament Bills, GOV.UK, HMRC, ICO, CMA, Ofcom, FCA, OPSS, ASA, jurisprudență; EUR-Lex pentru partea UE). Verifică intrarea efectivă în vigoare (commencement), întinderea teritorială și regulile care există doar în UE. Ce nu a putut verifica marchează **NEVERIFICAT**.
5. **Răspunde** cu niveluri de încredere (VERDE / GALBEN / PORTOCALIU / ROȘU), separând legislația, ghidurile oficiale, jurisprudența și propria interpretare, și ținând separat concluziile UK de cele UE.
6. **Escaladează** la tipul potrivit de specialist când e nevoie și poate pregăti un dosar pentru acesta.

**Răspunde mereu în limba în care îi scrii** (română, engleză sau alte limbi). Denumirile actelor britanice rămân în engleză, cu o scurtă explicație la prima mențiune.

### Cerințe

- Un cont Claude cu suport pentru **skill-uri** (aplicația claude.ai web/desktop sau Claude Code).
- **Căutare web / acces web activat**. Fără acces web skill-ul funcționează, dar marchează toate afirmațiile juridice NEVERIFICAT.
- În aplicația Claude trebuie activată opțiunea **Code execution and file creation** (skill-urile au nevoie de ea).

### Instalare

**Instalare rapidă pentru Claude Code:** `npx skills add tiberiugabriel/LexUK -g -a claude-code` sau `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash`. Detalii mai jos.

Pachetul gata de încărcat este **`dist/lexuk.skill`** (o arhivă ZIP care conține folderul `lexuk/`).

#### Varianta A: aplicația Claude (claude.ai web sau desktop)

**Free, Pro, Max:**
1. Descarcă [`dist/lexuk.skill`](https://github.com/tiberiugabriel/LexUK/raw/main/dist/lexuk.skill). Dacă browserul sau fereastra de upload cere un fișier `.zip`, redenumește-l în `lexuk.zip`.
2. Mergi la **Settings → Capabilities** și activează **Code execution and file creation**.
3. Mergi la **Customize → Skills**, apasă **+**, apoi **+ Create skill → Upload a skill**.
4. Încarcă fișierul.
5. Verifică dacă **lexuk** e activat în lista de skill-uri.

**Team, Enterprise:** un owner trebuie să activeze întâi **Code execution and file creation** și **Skills** în **Organization settings → Plugins & skills → Policy**. Apoi urmezi pașii 3–5 de mai sus.

Denumirile meniurilor se pot schimba de la o versiune la alta; pașii actuali sunt în articolul Anthropic [Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude).

#### Varianta B: Claude Code

Skill-urile instalate în aplicația Claude **nu** se sincronizează cu Claude Code; trebuie instalate separat. Claude Code citește skill-urile personale din `~/.claude/skills/<nume-skill>/SKILL.md` (toate proiectele) și pe cele de proiect din `.claude/skills/<nume-skill>/SKILL.md` (doar acel proiect). Vezi [documentația Claude Code despre skill-uri](https://code.claude.com/docs/en/skills).

##### B1. O singură comandă (recomandat)

**Cu CLI-ul skills** (necesită [Node.js](https://nodejs.org)):

```bash
npx skills add tiberiugabriel/LexUK -g -a claude-code
```

- `-g` instalează pentru utilizatorul tău (toate proiectele). Fără el, skill-ul ajunge în `.claude/skills/` din proiectul curent.
- `-a claude-code` alege Claude Code. Adaugă `-y` ca să sari peste confirmări.
- [CLI-ul skills](https://github.com/vercel-labs/skills) este un instrument terț, de la Vercel Labs, și funcționează și cu alți agenți de programare.

**Cu scriptul de instalare** (nu necesită Node.js):

macOS / Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash
```

Windows (PowerShell):

```powershell
irm https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.ps1 | iex
```

Scriptul descarcă repository-ul de pe GitHub, copiază `skills/lexuk` în `~/.claude/skills/lexuk` și înlocuiește o instalare LexUK mai veche, dacă există. Opțiuni:

| Opțiune | macOS / Linux | Windows |
|---|---|---|
| Doar proiectul curent | `curl -fsSL …/install.sh \| bash -s -- --project` | `& ([scriptblock]::Create((irm …/install.ps1))) -Project` |
| Folder ales | `… \| bash -s -- --dir <cale>` | `… -Dir <cale>` |
| Dezinstalare | `… \| bash -s -- --uninstall` | `… -Uninstall` |
| O anumită versiune | `… \| LEXUK_REF=<tag sau branch> bash` | `$env:LEXUK_REF="<tag sau branch>"` înainte de rulare |

(`…` înseamnă `https://raw.githubusercontent.com/tiberiugabriel/LexUK/main`.)

Un script descărcat de pe internet și trimis direct în terminal rulează cu permisiunile tale. Dacă preferi, deschide și citește întâi [`install.sh`](install.sh) sau [`install.ps1`](install.ps1), ori folosește metoda manuală de mai jos.

##### B2. Manual

**macOS / Linux (personal, toate proiectele):**

```bash
mkdir -p ~/.claude/skills
unzip -o ~/Downloads/lexuk.skill -d ~/.claude/skills/
ls ~/.claude/skills/lexuk    # trebuie să apară SKILL.md și references/
```

**Windows (PowerShell, personal):**

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills" | Out-Null
Copy-Item "$env:USERPROFILE\Downloads\lexuk.skill" "$env:TEMP\lexuk.zip"
Expand-Archive "$env:TEMP\lexuk.zip" -DestinationPath "$env:USERPROFILE\.claude\skills" -Force
Get-ChildItem "$env:USERPROFILE\.claude\skills\lexuk"
```

**Dintr-o clonă a acestui repository:**

```bash
git clone https://github.com/tiberiugabriel/LexUK.git
cp -R LexUK/skills/lexuk ~/.claude/skills/lexuk
```

Ca `git pull` să actualizeze automat skill-ul instalat, folosește un link simbolic în loc de copie:

```bash
ln -s "$(pwd)/LexUK/skills/lexuk" ~/.claude/skills/lexuk
```

**Doar pentru un proiect:** copiază folderul `skills/lexuk/` în `.claude/skills/lexuk/` din proiectul tău.

Claude Code urmărește folderele de skill-uri, așa că modificările se aplică de obicei fără restart. Dacă `~/.claude/skills` nu exista când a pornit sesiunea, repornește Claude Code.

În Finder, folderul `.claude` e ascuns. Îl deschizi cu `open ~/.claude/skills` în Terminal sau cu **Cmd + Shift + G** în Finder.

#### Varianta C: Claude API

Skill-ul respectă formatul Agent Skills și poate fi folosit prin Claude API. Vezi [documentația Agent Skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview).

### Utilizare

- **Trigger explicit:** începe mesajul cu **`/lexuk`**.
  - `/lexuk Am un SRL în România și vreau să vând online clienților din UK. Ce obligații am acolo?`
  - `/lexuk` singur: te întreabă ce ai nevoie (întrebare, audit, document, dosar pentru specialist, incident urgent).
- **În Claude Code**, `/lexuk` e și comandă slash nativă (numele skill-ului devine comanda).
- **Trigger automat:** se activează și când întrebi despre aceste subiecte fără comandă. Întrebările foarte scurte pot să nu-l declanșeze; folosește `/lexuk` ca să fii sigur.
- **Dacă ai instalat și LexRO:** folosește `/lexuk` sau `/lexro` ca să alegi explicit jurisdicția când o întrebare se potrivește la ambele.

Exemple de cereri:
- „Pot pune Google Analytics fără consimțământ acum că a intrat în vigoare Data (Use and Access) Act?"
- „Fă-mi un audit al checkout-ului pentru drip pricing și DMCC Act."
- „Scrie-mi termenii și condițiile pentru magazinul meu online din UK care livrează și în Irlanda."
- „Am avut o breșă de date azi-dimineață. Ce fac?"

### Actualizare și dezinstalare

- **Aplicația Claude:** șterge skill-ul vechi din **Customize → Skills**, apoi încarcă noul `lexuk.skill`.
- **Claude Code:** rulează din nou aceeași comandă de instalare (`npx skills add …` sau scriptul de instalare). Dacă ai instalat manual, înlocuiește folderul sau dă `git pull` dacă ai folosit link simbolic.
- **Dezinstalare din Claude Code:** `curl -fsSL https://raw.githubusercontent.com/tiberiugabriel/LexUK/main/install.sh | bash -s -- --uninstall` (sau `-Uninstall` cu `install.ps1`) ori, simplu, șterge folderul `~/.claude/skills/lexuk`.
- **Dezinstalare din aplicația Claude:** șterge skill-ul din **Customize → Skills**.

### Structura repository-ului

```
LexUK/
├── README.md                 # acest fișier (EN + RO)
├── install.sh                # instalator cu o comandă pentru Claude Code (macOS / Linux)
├── install.ps1               # instalator cu o comandă pentru Claude Code (Windows)
├── skills/
│   └── lexuk/                # skill-ul
│       ├── SKILL.md          # fluxul de lucru, regulile de bază, triggerul /lexuk
│       └── references/       # intake, fișiere pe domenii (inclusiv interfața UK-UE), surse, escaladare, formate
├── dist/
│   └── lexuk.skill           # pachetul gata de încărcat în aplicația Claude (ZIP)
└── scripts/
    └── package.sh            # reconstruiește dist/lexuk.skill
```

### Reconstruirea pachetului

După ce modifici fișiere în `skills/lexuk/`, reconstruiește pachetul:

```bash
./scripts/package.sh
```

### Limite

- `skills/lexuk/references/acts-registry.md` este o **hartă de pornire compilată de un model AI, neverificată act cu act**. Fiecare intrare are un nivel de încredere (H / M / ID?) și o întindere teritorială. Câteva subiecte care se schimbă rapid (abonamente DMCC, intrarea în vigoare a DUAA, reînnoirea deciziei de adecvare UE, reglementarea BNPL, Cyber Security and Resilience Bill, PRaM Act) au fost verificate punctual pe surse secundare în octombrie 2026. Skill-ul reverifică actele live, dar corectarea registrului îmbunătățește rezultatele.
- Adresele surselor oficiale sunt adrese de bază; verifică-le o dată.
- Skill-ul poate greși. Legislația britanică din acest domeniu e în plină reformă (DMCC Act, DUAA, siguranța produselor, securitate cibernetică), iar dreptul UE evoluează în paralel.
