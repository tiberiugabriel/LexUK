# Classification and intake

## Contents
1. Classification engine
2. Roles and signals
3. Universal intake (P1/P2/P3)
4. Role modules
5. Specialist lenses (questions users don't ask)
6. How to ask
7. Missing-fact codes

Ask the questions in the user's language. The question lists below are written in English for the model; translate them naturally.

---

## 1. Classification engine

Walk through this sequence. Each level can trigger new domains.

```
ENTITY (individual, sole trader, partnership, LLP, Ltd, PLC, CIC, charity, overseas entity)
  → ESTABLISHMENT (where incorporated / where actually run / UK branch or not)
  → UK JURISDICTION(S) (England and Wales / Scotland / Northern Ireland)
  → BUSINESS MODEL (sells directly / intermediates / subscription / services / software)
  → WHAT IS SOLD (physical goods / digital content / digital services / traditional services / mix)
  → TO WHOM (B2C / B2B / both; vulnerable consumers, children)
  → WHERE (GB / NI / EU Member States / rest of world; which markets are actively targeted)
  → EU NEXUS (EU customers, EU users monitored, goods into EU or NI, EU establishment)
  → WHO CONTRACTS WITH WHOM (who is the trader at checkout)
  → MONEY FLOW (who collects, who invoices, does money pass through the platform?)
  → DATA FLOW (what data, where, to whom, outside the UK? to/from the EEA?)
  → PRODUCT FLOW (where it ships from, who imports into GB / NI / EU, who delivers, who handles returns)
  → TECHNOLOGY (AI, tracking, pixels, SDKs, IoT, mobile app)
  → USER-GENERATED CONTENT (reviews, chat, forums, seller listings: Online Safety Act)
  → TRIGGERED DOMAINS (see domain-triggers.md)
  → ACTS + REGULATORS
  → MISSING FACTS
  → RISK
  → ANSWER / ESCALATE
```

UK entity forms: sole trader (self-employed individual, registered with HMRC for Self Assessment), partnership, LLP (limited liability partnership), Ltd (private company limited by shares, registered at Companies House), PLC, CIC (community interest company). Scottish partnerships have separate legal personality; English ones do not.

A non-UK business (e.g. a Romanian SRL) selling into the UK is a frequent case: UK consumer, data, product safety and VAT rules may apply to it without any UK establishment. Ask about this explicitly.

## 2. Roles and signals

A user can have several roles. Always confirm the classification.

| Role | Typical signals | Watch out for |
|---|---|---|
| Online shop (direct seller) | "I sell on my website", own stock | whether it is also manufacturer or importer |
| Online marketplace | "other sellers list on my site", commission | who appears as seller, who collects payments, VAT deemed supplier for imports and overseas sellers, Online Safety Act if users can post content |
| Service intermediation platform | listed providers, bookings, leads | who is liable for the service, platform reporting to HMRC |
| SaaS / software | subscription, account, customer data in the platform | controller vs. processor (UK GDPR), B2C vs. B2B, subscription contracts regime |
| Digital content | courses, ebooks, templates, apps | right to cancel and its loss, CRA 2015 digital content rights |
| Dropshipper | "I don't hold stock", non-UK supplier | who is importer and liable for the product; customs, VAT on low-value goods |
| Importer | brings products into GB or NI | product safety, UKCA/CE, customs, EPR; GB vs NI rules |
| Manufacturer | makes the product or puts its own brand on it | UKCA/CE marking, technical documentation, UK responsible person for some products |
| Online service provider | consulting, coaching, services delivered at a distance | service starting in the cancellation period |
| Agency / software house | builds websites or apps for clients | IP ownership, licences, processor role, liability for vulnerabilities |
| Affiliate / influencer / publisher | promotes other people's products | CAP Code, CMA influencer guidance, DMCC unfair practices |
| User-to-user or search service | forum, chat, community, reviews, comments, user listings | Online Safety Act duties (Ofcom) |

**Hidden role rule:** whoever puts their name or brand on a product, substantially modifies it, or first places it on the GB, NI or EU market may have manufacturer or importer obligations, even if they consider themselves "just a shop". Verify this rule in the text of the applicable regulations; do not assume it.

## 3. Universal intake

### P1: critical (no conclusion without them)

1. What legal form does the business have, and where is it incorporated and actually run?
2. What exactly do you sell? (physical goods / digital content / services / software / combinations)
3. Do you sell to consumers (B2C), businesses (B2B) or both?
4. Where do you sell or deliver: Great Britain, Northern Ireland, EU countries, elsewhere? Do you actively target the EU (language, currency, shipping, ads)?
5. Who appears as the seller at checkout and on the invoice: you or a third party?
6. What personal data do you collect, and from whom (including people in the EU)?

### P2: important (change the obligations)

7. Who collects the money, and through which payment provider? Does other people's money pass through your account?
8. Where do products ship from? From inside the UK, the EU or elsewhere? Who is the manufacturer?
9. Do you have subscriptions, free or discounted trials, or auto-renewal?
10. What third-party tools are on the site or app (analytics, ad pixels, chat, CRM, email marketing)?
11. Do you use AI in the product or operations (recommendations, chatbot, pricing, moderation, content generation)?
12. Do you have user accounts? Reviews? Can users post content or message each other?

### P3: completes the picture

13. Are you VAT-registered in the UK? In any EU state? Do you use the EU OSS/IOSS schemes?
14. Do you have employees or contractors with access to data?
15. Where is the data hosted? Which providers have access, and from which countries?
16. Do you already have Terms, a Privacy Notice, a Cookie Policy? Who wrote them and when were they last updated (before or after the DMCC Act and DUAA changes)?
17. Have you had complaints, incidents, chargebacks, or contact from Trading Standards, the CMA, the ICO, HMRC or Ofcom?
18. Size: number of staff, turnover, balance sheet (matter for company size thresholds, NIS, Modern Slavery Act statements, some exemptions).

## 4. Role modules

Activate only the module matching the confirmed role.

### Online shop
- Product category: is it sector-regulated? (see domain-triggers.md)
- Are you manufacturer, importer or distributor for each category, in GB and in NI?
- How do you handle cancellations, returns and faulty goods? Who pays for returns?
- Do you have made-to-order, perishable or sealed hygiene products? (exceptions to the right to cancel)
- How do you present reference prices and discounts? Any mandatory fees added at the end (drip pricing)?
- Do you use countdowns, "limited stock", "X people are viewing now"? Are they true?

### Marketplace / intermediation platform
- Who concludes the contract with the customer: the platform or the seller?
- What data do you collect about sellers and how do you verify them?
- Do you have private-individual sellers? Overseas sellers? Goods imported in consignments of low value?
- How does ranking work? Is there paid placement?
- Can users post reviews, messages or listings visible to others? (Online Safety Act)
- How do you suspend or remove a seller? Is there an internal complaint system?
- Do you collect the money and pass it on to sellers? (possible payment services issue)
- Do you also sell your own products on the platform? (self-preferencing, competition)
- Who is liable to the buyer for defective products and returns?
- Do you have reporting obligations to HMRC about sellers (platform reporting rules)?
- Do you also serve EU users? (DSA, EU legal representative)

### SaaS
- B2B, B2C or both?
- Do your customers upload third parties' personal data into the platform? (you are a processor)
- Do you have data processing agreements with customers? A list of sub-processors?
- Where is hosting? Transfers outside the UK (and, for EU customers, outside the EEA)?
- Trial, auto-renewal, cancellation, refunds? (DMCC subscription contracts regime)
- AI features? Does the AI provider use the data for training?
- Enterprise customers with security or data residency requirements?
- Is the software also sold as a product or embedded in connectable devices? (PSTI; EU Cyber Resilience Act if sold in the EU)

### Dropshipper
- Who manufactures, where, and where does the parcel ship from?
- Who is the importer on paper? Who clears customs and accounts for import VAT?
- Is there a UK-based economic operator for the product where one is required (and an EU one for sales into the EU or NI)?
- Do you have the conformity documents (declaration of conformity, technical documentation, labelling)?
- Who handles returns, faulty goods and recalls?
- Is the product restricted (electricals, toys, cosmetics, food, supplements, batteries, e-bikes)?

### Online service provider
- Does the service start before the cancellation period expires? Did the consumer expressly request it, and were they told about paying for services provided and losing the right to cancel after full performance? (verify the exact conditions in the Consumer Contracts Regulations 2013)
- Do you promise results? Do you make health, financial earnings or performance claims?
- Is the service itself regulated (financial, legal, health, immigration advice, etc.)?
- Do you use subcontractors with access to customer data?

### Agency / software house
- Who owns the rights in the code, design and content (including AI-generated content)?
- Do you work with employees or contractors? Do contractor agreements assign copyright in writing?
- Do you use open-source components? What licences, and are they compatible with delivery to the client?
- Do you access your client's customers' personal data? (processor, Article 28 contract)
- Who owns the domain, cloud accounts, repository?
- Who is liable for vulnerabilities after delivery? Is there a warranty or maintenance period?

## 5. Specialist lenses

These are the questions users usually do not ask. Use them selectively, depending on the triggered domains.

### Solicitor
- Can you prove which terms the customer accepted and which version was in force at the time of the order?
- Can you prove the price and information displayed before the order?
- Are the terms actively accepted or merely available on the site (incorporation of terms)?
- What happens if a seller on the platform disappears? Who is liable to the consumer?
- Do you have terms that may be unfair under Part 2 of the Consumer Rights Act 2015 (broad exclusions, unilateral variation, disproportionate charges)?
- Which law and courts apply? Consumers in Scotland or Northern Ireland, and in EU states you target, keep their local protections (verify the private international law rules after Brexit).
- Are the trading disclosures required by company law on the website and in emails?

### Tax adviser / accountant
- Who is the seller for VAT purposes? Could the platform be the deemed supplier?
- Where is the place of supply (UK, EU state, elsewhere)?
- Are you over or close to the UK VAT registration threshold? Do you have overseas-seller status (no threshold)?
- How do you treat refunds, chargebacks, vouchers, gift cards, account credit?
- Are you within Making Tax Digital for VAT or for Income Tax?
- Do you sell goods to EU consumers or to Northern Ireland? (EU VAT, IOSS, NI protocol rules)
- Do you have a permanent establishment in another state through your activity there?

### DPO
- Do analytics or pixels fire before consent? Are any analytics now exempt from consent under the amended PECR, and are the exemption conditions met?
- Is rejecting cookies as easy as accepting them?
- Can sellers on the platform see buyers' data? On what basis and within what limits?
- Does data reach an AI provider? Is it used for training?
- Do you rely on "recognised legitimate interests" or the new automated decision-making rules introduced by the DUAA? Are the conditions actually met?
- Do test environments contain real data? Do logs contain emails, IPs, tokens?
- Do you need an EU representative (EU GDPR Art. 27) because you serve EU residents?
- Have you paid the ICO data protection fee (or confirmed an exemption)?

### Security specialist
- Can a seller or customer see someone else's data by changing an ID in the URL or API (IDOR/BOLA)?
- Is MFA enabled on admin accounts? Who can export the entire database?
- Is there an audit log for order changes and data access?
- Where are API keys and secrets stored? What happens if a provider's key is compromised?
- Is there an incident response procedure? Who decides whether an incident is a personal data breach?
- Do you sell connectable consumer products? (PSTI security requirements)

### E-commerce compliance specialist
- What exactly appears on the product page, in the basket, at checkout and in the confirmation email?
- Does the order button make clear the order involves an obligation to pay?
- Are all mandatory fees in the headline price (no drip pricing)?
- How does cancellation work in practice? Is the model cancellation form provided?
- How are reviews collected, moderated and verified?
- Is there accessibility testing (Equality Act 2010 duties; European Accessibility Act if selling to EU consumers)?
- Are Terms, Privacy Notice and Cookie Policy versioned?

### Customs adviser / product compliance
- What is the commodity code? Do you have a GB EORI (and an XI EORI for Northern Ireland, an EU EORI for EU imports)?
- Does the product fall under sector-specific rules (see domain-triggers.md)? UKCA, CE, or both?
- Who is the responsible economic operator in GB, in NI and, if relevant, in the EU?
- Do you have producer responsibility obligations (packaging EPR, WEEE, batteries)?
- Do goods move GB → NI? (Windsor Framework: UK internal market scheme, "not at risk" goods, labelling)

## 6. How to ask

- Group: "To tell you exactly what applies, I need 3 things: ..."
- Ask first the questions that change the conclusion most.
- Offer answer options when the user may not know the terms ("Does the customer pay you or the seller directly?").
- If an answer opens a new domain, say so: "That means EU VAT and an EU responsible person also come into play; I'll get back to it."
- Do not ask for information you will not use.
- If the user declines or doesn't know, continue with a conditional answer and mark the missing fact.

## 7. Missing-fact codes

Use them in the answer (translated into the user's language) so it is clear what blocks the conclusion:

- `MISSING: ROLE` (seller, intermediary, manufacturer, importer)
- `MISSING: CUSTOMER_TYPE` (B2C/B2B)
- `MISSING: TERRITORY` (GB / NI / EU states / elsewhere)
- `MISSING: UK_JURISDICTION` (England and Wales / Scotland / Northern Ireland)
- `MISSING: EU_NEXUS` (EU customers, EU users, goods into EU or NI)
- `MISSING: PRODUCT` (category, sector-specific rules)
- `MISSING: MANUFACTURER_IMPORTER`
- `MISSING: MONEY_FLOW`
- `MISSING: DATA_FLOW` (what data, where, transfers)
- `MISSING: VAT_STATUS`
- `MISSING: THIRD_PARTY_TOOLS` (pixels, analytics, SaaS)
- `MISSING: AI_USE`
- `MISSING: USER_CONTENT` (can users post or message?)
- `MISSING: SIZE` (staff, turnover, balance sheet)
