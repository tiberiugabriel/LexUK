# Domain: UK-EU interface (EU nexus, Northern Ireland, divergence)

Starting acts: acts-registry.md, EU rows in every section. All verified live, on EUR-Lex for EU law and legislation.gov.uk for UK law. For the law of a specific Member State (e.g. Romania), use that state's official sources; the companion skill LexRO covers Romania.

## Why this file exists

The UK left the EU on 31 January 2020 and the transition period ended on 31 December 2020. Since then:
- **UK law and EU law are separate systems.** EU law adopted after 2020 does not apply in Great Britain. UK law built on EU law ("assimilated law") can be changed by the UK at any time.
- **But EU law still reaches UK businesses** through what they do in the EU (selling to EU consumers, monitoring EU residents, placing goods on the EU market, offering platform services in the EU).
- **Northern Ireland** remains, for goods, largely within EU rules under the Windsor Framework.
- **Trade** is governed by the EU-UK Trade and Cooperation Agreement (TCA): no tariffs on goods meeting rules of origin, but customs formalities, VAT at import and regulatory checks apply.

So every analysis asks two separate questions: **what UK law requires** and **what EU law requires, where**. Never merge them into one rule.

## Step 1: map the EU nexus

| Fact | EU consequence to check |
|---|---|
| sells goods or services to consumers in the EU (targets them: EU language, currency, delivery, ads, domain) | EU consumer law of the consumer's Member State (Rome I Art. 6, Brussels I bis), Omnibus rules (30-day prior price, reviews, ranking), EU legal guarantee, withdrawal button (check application date), geo-blocking, EAA |
| offers goods or services to people in the EU, or monitors their behaviour | EU GDPR (Art. 3(2)), EU representative (Art. 27, check exemption), ePrivacy (cookies) under Member State law |
| platform, hosting, marketplace used by people in the EU | DSA (legal representative in the EU for providers without EU establishment, Art. 13; marketplace obligations), P2B Regulation, GPSR marketplace duties |
| places physical goods on the EU market (ships to EU customers) | GPSR (EU responsible person, online offer information), Market Surveillance Regulation Art. 4, CE marking and sector rules, EU EPR (packaging, WEEE, batteries) in each destination state, EU customs |
| sells goods to EU consumers | EU VAT: import VAT; IOSS for consignments up to the EU threshold (verify); otherwise the customer may pay import VAT and fees (consumer experience and disclosure issue) |
| supplies digital or other services to EU consumers | EU VAT in the customer's state; non-Union OSS scheme for services (verify scope) |
| AI system placed on the EU market or whose output is used in the EU | EU AI Act (providers outside the EU may need an authorised representative; phased application; check postponements) |
| connectable products or software sold in the EU | EU Cyber Resilience Act (phased), Radio Equipment Directive delegated act on cybersecurity, Data Act |
| has an EU establishment (subsidiary, branch, warehouse, staff) | the full EU and national regime of that state, including tax and possibly NIS2 |

If the nexus is unknown: `MISSING: EU_NEXUS`. Ask; do not assume "UK-only".

## Step 2: Northern Ireland (Windsor Framework)

For goods placed on the market in Northern Ireland, check:
- **product rules**: EU goods legislation listed in the framework applies in NI (e.g. EU GPSR, CE marking, EU sector rules); UKCA alone is not sufficient for the NI market in many cases; check UKNI marking and the "UK internal market scheme" / "not for EU" labelling for goods moved from GB;
- **VAT on goods**: NI follows EU VAT rules for goods (XI VAT prefix), while services follow UK VAT; check the treatment of GB → NI and NI → EU movements;
- **customs**: GB → NI movements (green lane / red lane, trusted trader scheme), XI EORI;
- **Stormont brake** and Joint Committee decisions: check whether any EU act was disapplied in NI.

Conclusion for NI goods questions is usually ORANGE or RED unless verified on GOV.UK and the framework texts. Escalate to a customs adviser for regular GB → NI flows.

## Step 3: data flows UK ↔ EU

| Direction | Mechanism to check |
|---|---|
| EEA → UK | EU adequacy decision for the UK (renewed in December 2025 with a sunset date, according to the compiler: verify current status and any challenge) |
| UK → EEA | UK adequacy regulations recognising the EEA (verify) |
| UK → third countries | UK adequacy regulations ("data bridges"), IDTA or UK Addendum to EU SCCs, transfer risk assessment |
| EU-facing UK business | EU GDPR applies in parallel to EU residents' data; EU SCCs may be needed for onward transfers from the EU; lead supervisory authority is unavailable without an EU establishment, so each relevant Member State authority may be competent |
| UK-facing EU business | UK GDPR applies (Art. 3(2) UK GDPR); UK representative (Art. 27 UK GDPR, check exemption); ICO fee may apply |

The DUAA 2025 changed UK GDPR (recognised legitimate interests, automated decisions, cookie exemptions, research, complaints). EU GDPR did not change in the same way. A practice lawful in the UK after DUAA may be unlawful for EU residents' data. Keep two columns.

## Step 4: divergence check (what differs on the same topic)

Use this as a prompt list; verify every row live, divergence moves in both directions.

| Topic | UK (GB) | EU |
|---|---|---|
| Unfair practices, fake reviews, drip pricing | DMCC Act Part 4 (banned practices list, CMA fines) | UCPD + Omnibus + national enforcement |
| Prior price for discounts | general misleading pricing rules + guidance | Omnibus 30-day prior price rule |
| Subscriptions | DMCC subscription regime (check commencement) | Member State rules; EU proposals (check) |
| Cancellation / withdrawal | Consumer Contracts Regulations 2013 | CRD as transposed, plus withdrawal function (check date) |
| Conformity | CRA 2015 rights; limitation 6 years (5 in Scotland) | minimum 2-year legal guarantee, transposed nationally |
| Platforms | Online Safety Act (Ofcom), P2B (assimilated) | DSA, P2B, DMA |
| Product safety | GPSR 2005 + PRaM Act 2025 reforms; UKCA/CE recognition | GPSR 2023/988, Market Surveillance Regulation |
| Cookies | PECR as amended by DUAA (some analytics/functional exemptions) | ePrivacy Directive as transposed; check EU reforms |
| Data protection | UK GDPR as amended by DUAA | EU GDPR (check any "Digital Omnibus" amendments) |
| AI | no general AI statute; sector regulators, ICO guidance | AI Act (phased) |
| Cyber | NIS Regulations 2018; Cyber Security and Resilience Bill; PSTI | NIS2; CRA; RED cyber delegated act |
| Accessibility | Equality Act 2010 duties | European Accessibility Act |
| VAT on low-value goods | UK rules for consignments ≤ threshold, marketplace deemed supplier | IOSS, deemed supplier |
| Platform tax reporting | UK Platform Operators Regulations 2023 | DAC7 |

## Step 5: EU business selling into the UK (reverse case)

For an EU business (e.g. a Romanian shop) selling to UK consumers, check:
- UK consumer law applies to UK consumers who are targeted (CRA 2015, Consumer Contracts Regulations, DMCC Act); CMA enforcement reach;
- UK GDPR Art. 3(2) and UK representative; PECR for cookies and marketing to UK users;
- UK VAT: overseas sellers have no registration threshold for UK supplies (verify); goods up to the low-value threshold: VAT charged at the point of sale by the seller or marketplace; above: import VAT;
- UK product rules: UK responsible person or importer for many products, UKCA or recognised CE, UK cosmetics SCPN, labelling with a UK address where required;
- customs: rules of origin under the TCA for zero tariff, GB EORI if acting as importer;
- packaging EPR and WEEE obligations may attach to the UK importer or seller.

## Common pitfalls
- concluding "we're a UK company, EU law doesn't apply" while shipping to EU consumers;
- concluding "it's EU law, so it applies in the UK" for post-2020 acts;
- treating Northern Ireland like Great Britain for goods;
- one privacy notice citing only UK GDPR while serving EU residents (or only EU GDPR while UK-based);
- no EU representative (GDPR, DSA, AI Act) where required;
- EU consumers surprised by import VAT and fees at delivery: possible misleading omission under EU law;
- assuming adequacy is permanent: both directions have review or expiry mechanisms.

## Specific escalation
- regular sales into the EU at volume: EU lawyer (in the main target state) + tax adviser for EU VAT;
- Northern Ireland goods flows: customs adviser;
- cross-border data flows with special category data or large scale: DPO/solicitor with EU and UK practice;
- platform with significant EU users: technology lawyer for DSA.
