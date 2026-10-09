# Contributing to LexUK

Thank you for helping improve LexUK. UK law in this area changes often, and the reference files were compiled by an AI model, so corrections from people who read the official texts are the most valuable contribution.

## Ways to contribute

- **Report a legal inaccuracy**: open an issue with the [Legal inaccuracy](https://github.com/tiberiugabriel/LexUK/issues/new?template=legal-inaccuracy.yml) template.
- **Ask for more coverage**: a topic, sector, business model or act LexUK should handle, with the [Coverage request](https://github.com/tiberiugabriel/LexUK/issues/new?template=coverage-request.yml) template.
- **Report a bug**: installation, packaging or skill behaviour, with the [Bug report](https://github.com/tiberiugabriel/LexUK/issues/new?template=bug-report.yml) template.
- **Send a pull request** with a fix. For larger changes (a new domain file, a change to the workflow or the response format), open an issue first so we can agree on the approach.

Never include personal data or confidential details about a real business in issues, pull requests or examples.

## Sources

A legal correction must rest on an **official source**. Accepted sources:

| Source | Use it for |
|---|---|
| [legislation.gov.uk](https://www.legislation.gov.uk) | UK, Scottish, Welsh and Northern Ireland legislation, extent, commencement, outstanding changes |
| [UK Parliament Bills](https://bills.parliament.uk) | Bills in progress, Royal Assent |
| [GOV.UK](https://www.gov.uk), [HMRC manuals](https://www.gov.uk/hmrc-internal-manuals) | government and HMRC guidance |
| Regulators: [ICO](https://ico.org.uk), [CMA](https://www.gov.uk/government/organisations/competition-and-markets-authority), [Ofcom](https://www.ofcom.org.uk), [FCA](https://www.fca.org.uk), [OPSS](https://www.gov.uk/government/organisations/office-for-product-safety-and-standards), [ASA / CAP](https://www.asa.org.uk) | official guidance, codes, enforcement |
| [Find Case Law](https://caselaw.nationalarchives.gov.uk), [BAILII](https://www.bailii.org) | judgments |
| [EUR-Lex](https://eur-lex.europa.eu) | EU law, for the UK-EU interface only |

The full list the skill itself uses is in [`sources-and-verification.md`](skills/lexuk/references/sources-and-verification.md). Law firm articles and blogs can point you in the right direction, but they are not enough on their own.

When you cite legislation.gov.uk, check the "changes to legislation" notice. If it lists outstanding changes, open the amending act as well.

## Writing rules for skill files

The files in `skills/lexuk/` are instructions for Claude, so precision matters more than style.

- **Write in English.** The skill answers in the user's language on its own.
- **The references are a map, not a source.** Say where to look and what to check. Do not write conclusions that only hold on a certain date.
- **No figures from memory.** Thresholds, rates, deadlines and fines go in only with a source and a version date, and the skill must still re-verify them live.
- **Keep UK and EU apart.** Say which jurisdiction each rule applies to (England and Wales, Scotland, Northern Ireland, whole UK, EU) and mark EU-only rules clearly.
- **Acts registry entries** keep their confidence level: **H** (identifier very likely correct), **M** (verify identifier or status first), **ID?** (identifier still to be found). Raise a level only after checking the official text.
- **A new reference file** must be listed in the table in `SKILL.md`, otherwise the skill never reads it. `scripts/ci.sh` checks this.
- Keep the description in the `SKILL.md` frontmatter under 1024 characters and without `<` or `>`.

## Development

Requirements: `bash`, `python3`, `zip`, `unzip`, `curl`. Optional: `shellcheck`, `pwsh` and `ruby`, used by the CI script when installed.

1. Fork and clone the repository, then create a branch.
2. Edit files in `skills/lexuk/`.
3. Rebuild the package:

   ```bash
   ./scripts/package.sh
   ```

4. Run the local CI:

   ```bash
   ./scripts/ci.sh
   ```

   It checks the `SKILL.md` frontmatter, that both license copies match, that `CHANGELOG.md` and the README badges show the current version, that every reference file exists and is used, that relative links in the docs work, that `dist/lexuk.skill` matches the sources, the shell and PowerShell scripts, the issue forms, and an install and uninstall with `install.sh` from your local copy (no network needed). CI runs only on your machine; there is no GitHub Actions workflow.

5. Test the skill in practice: link your copy into Claude Code (see [Manual installation](README.md#b2-manual)) and ask a few questions that touch your change.
6. Add a line under `[Unreleased]` in `CHANGELOG.md` and open a pull request.

## Versioning

LexUK uses [Semantic Versioning](https://semver.org/), applied to a skill:

- **MAJOR**: changes to the workflow, the response format or the labels that users or other tools may rely on.
- **MINOR**: new domains, new business models, new acts or substantial new guidance.
- **PATCH**: corrections to acts, provisions, dates or wording, and fixes to scripts and docs.

## Releases (maintainers)

1. Move the `[Unreleased]` entries in `CHANGELOG.md` to a new `## [X.Y.Z] - YYYY-MM-DD` section and update the links at the bottom.
2. Set `version` and `updated` under `metadata` in `skills/lexuk/SKILL.md` to the same values.
3. Update the version and updated badges at the top of `README.md`.
4. Run `./scripts/package.sh`, then `./scripts/ci.sh`.
5. Commit, then tag and push:

   ```bash
   git tag -a vX.Y.Z -m "LexUK X.Y.Z"
   ```

   ```bash
   git push origin main --follow-tags
   ```

6. Create the GitHub release from the tag, with the changelog section as notes and `dist/lexuk.skill` attached:

   ```bash
   gh release create vX.Y.Z dist/lexuk.skill --title "LexUK X.Y.Z" --notes-file <(awk '/^## \[X.Y.Z\]/{f=1;next} /^## \[|^\[/{f=0} f' CHANGELOG.md)
   ```

## License of contributions

LexUK is licensed under the Apache License 2.0 with the Commons Clause condition (see [LICENSE](LICENSE)). Under section 5 of the Apache License, anything you submit for inclusion is provided under the same terms, unless you state otherwise in writing.
