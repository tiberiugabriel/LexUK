# Domain: payments and financial services

Starting acts: acts-registry.md, section F. All verified live, including FCA rule changes (safeguarding, BNPL, crypto) and whether any planned reforms have been made.

## The central question

Does the business hold, even temporarily, other people's money? If so, it may be providing a payment service or issuing e-money, activities that require FCA authorisation or registration (or the use of an authorised provider). Carrying on a regulated activity without permission can be a criminal offence and make agreements unenforceable (verify).

## What to establish

### 1. Money flow
- does the buyer pay the seller directly, through the seller's payment provider?
- does the buyer pay the platform, which then transfers to the seller?
- does the money pass through the platform's own bank account?
- is a marketplace payments product (e.g. "Connect"-type) used, where the authorised provider holds the funds and handles payouts?

### 2. Exclusions to check
- **commercial agent exclusion** (Payment Services Regulations 2017, Schedule 1 Part 2): applies only where the agent is authorised to negotiate or conclude on behalf of only the payer or only the payee; the FCA's Perimeter Guidance (PERG 15) interprets it restrictively for platforms. Do not conclude without a specialist (ORANGE or RED);
- **limited network exclusion** (gift cards, store cards usable in a limited network): conditions and FCA notification thresholds (verify).

### 3. Risky products
- internal wallet, account credit, top-up balance: possible e-money (Electronic Money Regulations 2011);
- loyalty points convertible into money or transferable;
- escrow (funds held until delivery);
- **credit**: offering instalments, deferred payment or credit directly is a regulated activity unless an exemption applies (Consumer Credit Act 1974, FSMA). Check the exemption for certain interest-free merchant credit;
- **BNPL** via third-party lenders: from 15 July 2026, deferred payment credit agreements provided by third-party lenders are regulated (according to secondary sources checked at compilation; verify). Merchants offering it: check whether they need permission as credit brokers or rely on an exemption, and financial promotion rules for how BNPL is advertised at checkout;
- crypto-assets: FCA registration for AML purposes, financial promotions regime, and any new authorisation regime (check commencement).

### 4. Operational obligations
- strong customer authentication and exemptions (usually handled by the payment provider);
- recurring payments and continuous payment authorities: cancellation rights for consumers (verify), and subscription rules (domain-consumer.md);
- surcharging: ban on charging consumers fees for using certain payment methods (Consumer Rights (Payment Surcharges) Regulations 2012; verify scope);
- chargebacks and disputes; s. 75 Consumer Credit Act (card issuer joint liability);
- card scheme rules and PCI DSS via the payment provider contract;
- anti-money laundering: check whether the business is a "relevant person" (e.g. high-value dealers accepting large cash payments, cryptoasset businesses, art market participants).

### 5. Payment data
- do not store card data unless necessary; PCI DSS via the provider contract;
- the UK GDPR role of the payment provider (see domain-gdpr.md).

## Common pitfalls
- a marketplace collecting into its own account and paying sellers, without authorisation or an authorised provider;
- account credit that functions like e-money;
- "0% instalments" offered directly without checking the credit regime;
- promoting BNPL at checkout with non-compliant wording;
- assuming the payment provider handles all obligations;
- surcharging consumers for card payments.

## Specific escalation
- any model where the business holds or redistributes money: financial services solicitor (RED until analysed);
- credit, BNPL broking, crypto: financial services solicitor;
- FCA or payment provider notices about breaches: solicitor, immediately.
