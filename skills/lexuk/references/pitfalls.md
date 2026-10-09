# Cross-cutting pitfalls and final check

Domain-specific pitfalls are in the domain files. These are the errors that occur across all domains, especially when an AI is answering about UK law.

## 1. Outdated information presented as current

The biggest risk for an AI assistant. Examples of situation types (verify them live; they may themselves be outdated):
- **Brexit leftovers**: templates still citing EU rules that no longer apply in Great Britain, e.g. the EU ODR platform link (UK ODR regulations revoked, according to the compiler), the EU Geo-blocking Regulation, "EU GDPR" as the UK law, CE marking requirements described as if UKCA did not exist, or the reverse;
- **replaced UK acts**: the Consumer Protection from Unfair Trading Regulations 2008 (replaced by DMCC Act Part 4, according to the compiler), the old Price Marking Order (check replacement), pre-DUAA ICO guidance on cookies, legitimate interests or subject access requests;
- **Acts not yet commenced**: the DMCC subscription contracts regime (start date moved several times), parts of the Product Regulation and Metrology Act 2025, Bills such as the Cyber Security and Resilience Bill;
- **phased regimes**: Online Safety Act duties via Ofcom codes, Companies House identity verification, Making Tax Digital for Income Tax, packaging EPR, BNPL regulation;
- **tax figures**: VAT registration threshold, low-value import limit, MTD thresholds, company size thresholds change.

Rule: if you did not verify it in this conversation, it is not "current".

## 2. UK-EU confusions (the most frequent error class for this skill)

- **EU law presented as UK law.** Post-2020 EU acts do not apply in Great Britain: DSA, NIS2, AI Act, Data Act, Cyber Resilience Act, EU GPSR, Omnibus amendments after 2020, the EU withdrawal-button directive, the European Accessibility Act. They may still apply to a UK business through its EU activity, or in Northern Ireland for goods.
- **UK law presented as if it covered EU sales.** Selling to EU consumers from the UK means the consumer's Member State law and EU GDPR may apply too. UK compliance alone is not enough.
- **The EU "30-day prior price" rule** is EU law (Omnibus). In the UK, reference pricing is governed by the general ban on misleading actions and the pricing practices guidance. Do not tell a UK-only trader the 30-day rule is mandatory; tell an EU-selling trader it applies to EU offers.
- **Legal guarantee vs. statutory rights.** The EU has a minimum 2-year legal guarantee of conformity; the UK has CRA 2015 rights (short-term right to reject, repair/replacement, price reduction/final right to reject) and a limitation period for claims (6 years in England, Wales and NI; 5 years in Scotland). Do not mix them.
- **Withdrawal vs. cancellation.** Same idea, different statutes and terminology. Cite the UK Regulations for UK consumers.
- **Northern Ireland is not Great Britain** for goods: EU product rules, EU VAT on goods, XI EORI, CE marking (UKNI in some cases), different labelling for goods moved under the UK internal market scheme.
- **Adequacy goes both ways but is not symmetric.** EU → UK transfers rely on the EU's adequacy decision (with an expiry date); UK → EEA transfers rely on UK adequacy regulations. A UK business serving EU residents may also need an EU representative.
- **Assimilated law still looks like EU law.** A UK regulation copying an EU regulation can diverge silently. Always cite the UK version (legislation.gov.uk) for UK conclusions and the EUR-Lex version for EU conclusions.

## 3. Frequent confusions (general)

- UK GDPR lawful basis ≠ PECR consent for cookies and marketing;
- platform ≠ seller; liability depends on what the consumer is told and the actual role;
- statutory rights ≠ commercial guarantee ("warranty");
- government announcement ≠ law in force;
- Royal Assent ≠ commencement;
- regulator guidance ≠ law (but shows how the regulator will act);
- ASA/CAP Code is self-regulation but has teeth (referral to Trading Standards, ad removal, sanctions);
- declared B2B ≠ actual B2B;
- "the supplier has CE/UKCA" ≠ documented conformity;
- the platform's HMRC reporting duty ≠ the seller's tax obligations;
- England ≠ UK (devolved rules in food, environment, packaging, some consumer and court procedures);
- "I don't know" ≠ "it doesn't apply".

## 4. Reasoning errors

- concluding by analogy with EU law or with another country;
- generalising one ASA ruling, ICO decision or CMA case to all cases;
- concluding from secondary sources without primary confirmation;
- ignoring exemptions (small business, size thresholds) or, conversely, applying them without checking the conditions;
- figures from memory (fines, thresholds, deadlines);
- section or SI numbers from memory, without verification.

## 5. Final check before sending the answer

Go through these questions:
1. Is the answer in the user's language, with UK statutory terminology (British English where in English)?
2. Did I confirm the user's role, or mark it as inferred?
3. Did I say which UK jurisdiction(s) the answer covers, and check extent?
4. Did I check the EU nexus, and keep UK and EU conclusions separate?
5. Did I identify the domains the user did not mention?
6. Did I verify live every act a conclusion relies on, including commencement? Is everything unverified marked `UNVERIFIED`?
7. Did I do the negative verification (revoked after Brexit, not commenced, EU-only)?
8. Did I separate law from guidance, interpretation and assumption?
9. Is there any unvalidated figure, deadline, threshold or section number in the answer?
10. Did I invent any link? (Only use links actually seen or the base addresses in sources-and-verification.md.)
11. Did I mark the confidence level?
12. Should the situation be escalated? Did I name the type of specialist and jurisdiction?
13. Is the answer proportionate to the question?
