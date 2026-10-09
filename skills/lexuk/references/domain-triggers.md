# Domain triggers

Purpose: from a few facts about the business, identify every domain that must be analysed, including those the user did not mention.

The lists below are **examples, not closed lists**. If an activity suggests a domain not listed here, analyse it and look up the applicable acts on official sources.

## 1. Domains

| Code | Domain | File |
|---|---|---|
| D-CONS | Consumer rights, distance contracts, prices, unfair commercial practices, subscriptions | domain-consumer.md |
| D-PLAT | Platforms, marketplaces, Online Safety Act, P2B, platform reporting | domain-platforms.md |
| D-PROD | Product safety, sector rules, UKCA/CE, EPR | domain-products-import.md |
| D-CUST | Imports, customs, GB/NI/EU movements | domain-products-import.md |
| D-DATA | Personal data protection (UK GDPR, DPA 2018, DUAA) | domain-gdpr.md |
| D-COOK | Cookies, tracking, electronic marketing (PECR) | domain-cookies-marketing.md |
| D-TAX | VAT, invoicing, MTD, low-value imports, platform reporting | domain-tax.md |
| D-PAY | Payment services, collecting for third parties, credit, BNPL, crypto | domain-payments.md |
| D-SEC | Cyber security, NIS, PSTI | domain-security.md |
| D-AI | AI (UK approach + EU AI Act via EU nexus), automated decisions | domain-ai-data.md |
| D-SMART | Smart data, connected products, data access | domain-ai-data.md |
| D-IP | Intellectual property, licences | domain-ip-competition-advertising.md |
| D-COMP | Competition | domain-ip-competition-advertising.md |
| D-ADV | Advertising (CAP Code), influencers, product claims | domain-ip-competition-advertising.md |
| D-ACC | Accessibility | domain-consumer.md (Accessibility section) |
| D-MIN | Children | cross-cutting: data (Children's Code), Online Safety Act, consumer, advertising, products |
| D-EU | UK-EU interface: EU customers, NI, transfers, EU representatives, divergence | domain-eu-interface.md |
| D-CORP | Company law disclosures, Companies House, Modern Slavery statements | domain-consumer.md (Mandatory information) and acts-registry.md, section I |

## 2. Activity → domains

| Activity | Domains to check |
|---|---|
| B2C online shop, goods from the UK | D-CONS, D-DATA, D-COOK, D-TAX, D-PROD, D-ACC, D-ADV, D-CORP |
| Exclusively B2B online shop | D-DATA, D-COOK, D-TAX, D-PROD, B2B contract law (Sale of Goods Act 1979, UCTA 1977); verify that consumers are really excluded and how |
| Dropshipping | D-CONS, D-PROD, D-CUST, D-TAX (low-value imports, import VAT), D-DATA, D-COOK, D-ADV |
| B2C marketplace | D-PLAT, D-CONS, D-PROD, D-TAX (deemed supplier, platform reporting), D-DATA, D-COOK, D-PAY, D-COMP, D-ACC |
| B2B marketplace | D-PLAT (P2B), D-COMP, D-DATA, D-TAX, contracts |
| Marketplace with overseas sellers | everything for marketplaces + D-CUST, VAT deemed supplier, seller verification, dangerous products |
| Service platform (bookings, providers) | D-PLAT, D-CONS, D-DATA, D-COOK, D-TAX, D-PAY; check whether the services are sector-regulated |
| Community, forum, chat, reviews, user listings | D-PLAT (Online Safety Act), D-DATA, D-MIN |
| B2B SaaS | D-DATA (often processor), D-SEC, D-AI, D-TAX, D-IP, B2B contracts |
| B2C SaaS / app | D-CONS (digital content, subscriptions), D-DATA, D-COOK, D-SEC, D-AI, D-ACC, D-MIN, D-TAX |
| Subscriptions | D-CONS (DMCC subscription regime: check commencement), D-PAY (recurring payments), D-DATA, D-TAX |
| Digital content (courses, ebooks) | D-CONS (loss of right to cancel and its conditions), D-IP, D-TAX, D-DATA |
| SaaS or product with AI | D-AI, D-DATA (automated decisions, transfers), D-IP, D-CONS, D-SEC |
| Hardware / IoT | D-PROD (UKCA/CE, radio equipment, EMC), D-SEC (PSTI), D-SMART, D-DATA, D-CUST if imported |
| Software sold as a product | D-IP (licences), D-CONS, D-SEC (PSTI if embedded in connectable products); D-EU (Cyber Resilience Act) if sold in the EU |
| Children's products | D-PROD (toys, safety), D-MIN, D-ADV, D-DATA |
| Food and supplements | D-PROD (food law, labelling, FSA/FSS, local authority registration), D-ADV (nutrition and health claims, less healthy food ad rules), D-CONS, D-TAX (zero-rating vs standard rate) |
| Cosmetics | D-PROD (UK cosmetics regime, responsible person, SCPN), D-ADV (claims), D-CUST if imported |
| Fashion and textiles | D-PROD (textile labelling, safety), D-IP (trade marks, counterfeits), D-CONS, EPR |
| Electricals | D-PROD (electrical safety, EMC, radio, RoHS), WEEE, batteries, D-CUST, D-SEC (PSTI if connectable) |
| E-bikes, e-scooters, lithium batteries | D-PROD (priority for product safety reform under PRaM Act 2025; check new rules), batteries, WEEE |
| Agency / software house | D-IP, D-DATA (processor), D-SEC, B2B contracts, D-TAX |
| Affiliate / influencer | D-ADV (CAP Code, CMA guidance), D-CONS (DMCC unfair practices), D-TAX |
| Crypto / digital assets | D-PAY (FCA regime, AML), D-ADV (financial promotions), D-CONS, D-TAX |
| Overseas (e.g. EU) business selling into the UK | D-CONS, D-DATA (UK GDPR Art. 3(2), UK representative), D-TAX (overseas seller VAT, no threshold), D-PROD (UK responsible person, UKCA/CE), D-CUST, D-EU |
| UK business selling into the EU | everything relevant for UK + D-EU (EU consumer law, EU GDPR, GPSR, EU VAT/IOSS, DSA if platform, EAA) |

## 3. Hidden signals in what the user says

The user may say these in any language; the examples are in English.

| User says | What it triggers |
|---|---|
| "we use Meta Pixel / Google Ads / TikTok Pixel" | D-COOK (consent before loading), D-DATA (transfers, joint controllership) |
| "we use Google Analytics only" | D-COOK (check whether the DUAA statistical exemption applies, and its conditions) |
| "we have a newsletter" | D-COOK (electronic marketing, soft opt-in), D-DATA |
| "we send SMS or WhatsApp messages" | D-COOK (PECR electronic mail), D-DATA |
| "monthly subscription", "free trial", "auto-renew" | D-CONS (DMCC subscription regime, check commencement), D-PAY |
| "booking fee", "service charge added at checkout" | D-CONS (drip pricing ban under DMCC) |
| "reviews", "ratings", "testimonials" | D-CONS (DMCC banned practices on fake reviews; CMA guidance), D-ADV, D-PLAT (OSA if user-generated) |
| "products come from China / Turkey / USA / EU" | D-CUST, D-PROD (UK responsible person / importer), D-TAX (low-value imports, import VAT) |
| "we also ship to Ireland / EU" | D-EU (EU consumer law, EU VAT, GPSR, EU GDPR) |
| "we deliver to Northern Ireland" | D-EU (Windsor Framework: goods rules, VAT on goods, XI EORI, labelling) |
| "own brand", "white label", "private label" | possible manufacturer role: D-PROD |
| "we collect payments and pay the sellers" | D-PAY (possible regulated payment service), D-TAX |
| "account credit", "wallet", "points convertible to cash" | D-PAY (e-money?), D-TAX (vouchers), D-CONS |
| "Christmas savings club", "pay in advance and save" | D-CONS (DMCC consumer savings schemes) |
| "pay in instalments", "Klarna / Clearpay" | D-PAY (BNPL now regulated for lenders; merchant role and financial promotions), D-CONS |
| "chatbot", "AI assistant", "personalised recommendations" | D-AI, D-DATA (profiling, automated decisions), D-CONS |
| "dynamic pricing", "personalised prices" | D-CONS (misleading practices), D-AI, D-DATA |
| "we generate descriptions / images with AI" | D-AI, D-IP, D-ADV (misleading images) |
| "users can message each other", "comments", "community" | D-PLAT (Online Safety Act), D-MIN |
| "discounts", "Black Friday", "was £X now £Y" | D-CONS (reference pricing guidance), D-ADV; D-EU (30-day rule) if selling to the EU |
| "eco", "sustainable", "carbon neutral" | D-ADV (CMA Green Claims Code, CAP), D-CONS; D-EU (Directive 2024/825) if EU |
| "children", "students", "teenagers" | D-MIN across all domains (ICO Children's Code, OSA, CAP) |
| "health data", "biometrics", "fitness" | D-DATA (special category data), possible DPIA, RED for escalation |
| "mobile app" | D-COOK (SDKs; PECR applies to apps), D-DATA, D-ACC, D-SEC |
| "connected device", "smart", "IoT" | D-SEC (PSTI), D-PROD, D-SMART, D-DATA |
| "we have over X staff / high turnover" | check thresholds: company size, NIS, Modern Slavery statement, payment practices reporting |
| "we received a letter from Trading Standards / CMA / ICO / HMRC / Ofcom" | ESCALATION: Urgent situations |
| "our account was hacked / data leaked" | ESCALATION: Urgent situations (breach), D-SEC, D-DATA |

## 4. Triggering rules

- **Ambiguity expands, it does not narrow.** If it is unclear whether a domain applies, mention it as "to be checked" along with the question that would settle it.
- **"Pure" B2B must be verified.** Many businesses call themselves B2B but accept orders from consumers. Ask how they prevent that.
- **Always ask about the EU nexus and Northern Ireland** when goods or consumers are involved. It changes product, VAT and consumer rules.
- **Being online does not automatically mean targeting the EU.** Analyse language, currency, delivery, targeted advertising, EU domain. The conclusion is interpretive: ORANGE if unclear.
- **Sector rules have verification priority.** For goods, the General Product Safety Regulations 2005 are a safety net; identify sector rules first.
- **Check devolved differences** for food, environment and packaging, and court procedures in Scotland and NI.
