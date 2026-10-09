# Domain: cyber security (NIS, Cyber Security and Resilience Bill, PSTI, technical measures)

Starting acts: acts-registry.md, section G. All verified live. For EU activities (NIS2, Cyber Resilience Act), see domain-eu-interface.md.

Security is not just a data protection appendix. It has several layers in the UK:
1. **general security obligations** (UK GDPR Art. 32, contracts, payment provider and card scheme requirements);
2. **NIS Regulations 2018**: obligations for operators of essential services and relevant digital service providers;
3. **Cyber Security and Resilience Bill**: proposed expansion of NIS (not law at compilation; check status);
4. **PSTI Act 2022**: security requirements for consumer connectable products;
5. for the EU market: NIS2 and the Cyber Resilience Act.

## 1. NIS Regulations 2018: do they apply?

Check:
- **relevant digital service providers (RDSPs)**: online marketplaces, online search engines, cloud computing services (verify definitions), established or with a representative in the UK; small and micro businesses are generally excluded (verify the size test);
- RDSPs register with the ICO (the competent authority for RDSPs; verify), take appropriate security measures and report incidents with a substantial impact (verify deadlines);
- **operators of essential services** in energy, transport, health, water, digital infrastructure: designated by thresholds; sector competent authorities;
- being a supplier to an NIS entity: contractual security requirements (supply chain).

## 2. Cyber Security and Resilience Bill

At compilation the Bill was going through Parliament (House of Lords). It would bring managed service providers and data centres into scope, strengthen incident reporting and regulators' powers. **A Bill is not law**: check Royal Assent and commencement before stating any obligation. Mark `VERIFIED_NOT_COMMENCED` or `UNVERIFIED` as appropriate.

## 3. PSTI: consumer connectable products

If the business manufactures, imports or distributes connectable consumer products in the UK (smart devices, IoT, connected toys, routers, phones; check exclusions):
- no universal default passwords;
- a published way to report security issues (vulnerability disclosure policy);
- information on the minimum security update period;
- statement of compliance; duties on importers and distributors; OPSS enforcement;
- in force since April 2024 (according to the compiler; verify).

For products also sold in the EU: Radio Equipment Directive delegated act on cybersecurity and the Cyber Resilience Act (phased).

## 4. Baseline technical checklist (for any online business)

Use it in audits. It is the practical translation of "appropriate measures" (consider Cyber Essentials as a recognised baseline):
- MFA for all admin accounts and infrastructure access;
- role-based access control, least privilege, periodic access reviews;
- data isolation between sellers or customers (test IDOR/BOLA);
- encryption in transit and at rest; key and secret management (not in code, not in the repository);
- dependency updates, vulnerability scanning;
- tested backups, recovery plan;
- audit logs for admin actions and data access, without unnecessary personal data in logs;
- abuse protection: rate limiting, account takeover protection;
- environment separation (no real data in test or staging);
- supplier and integration assessment;
- incident response procedure: roles, who decides whether it is a personal data breach, deadlines, communication.

Security testing must be authorised (Computer Misuse Act 1990).

## 5. Incidents

A security incident may simultaneously trigger:
- personal data breach notification to the ICO (UK GDPR, 72 hours where risk) and possibly EU authorities;
- NIS incident reporting (if in scope; separate deadlines and recipients);
- PSTI-related duties for product manufacturers (vulnerability handling);
- contractual obligations to customers, payment providers, insurers;
- informing users;
- reporting fraud or cyber crime (Action Fraud / Police Scotland / PSNI; NCSC for significant incidents).

See escalation.md (Urgent situations).

## Common pitfalls
- assuming NIS applies to every online business or never applies (online marketplaces above the size threshold are RDSPs);
- presenting the Cyber Security and Resilience Bill as law;
- selling connectable products without PSTI compliance;
- an incident handled purely technically, without assessing notification obligations.

## Specific escalation
- ongoing incident: incident response specialist + DPO/solicitor, immediately;
- uncertain NIS classification: specialist solicitor or consultant;
- connectable products: product compliance + security specialist.
