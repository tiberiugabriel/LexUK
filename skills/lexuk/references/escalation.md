# Escalation: when to refer to a specialist, and to whom

Escalation does not mean refusing help. Offer what you can (explanations, immediate steps, questions to prepare, documents to gather) and say clearly what must be decided by a specialist and why.

Specialists in the UK: solicitors (England and Wales: regulated by the SRA; Scotland: Law Society of Scotland; Northern Ireland: Law Society of Northern Ireland), barristers/advocates (usually via a solicitor, or direct access), chartered tax advisers (CIOT) and chartered accountants (ICAEW, ICAS, ACCA), data protection officers or privacy consultants, customs brokers and customs advisers, product compliance consultants and notified/approved bodies, incident response firms. For EU-side questions: a lawyer or tax adviser in the relevant Member State.

## 1. Urgent situations (running deadline or immediate risk)

Handle these before full intake.

### Personal data breach or security incident
Immediate steps to tell the user:
1. contain the incident (revoke access, change compromised passwords and keys, isolate affected systems), without destroying evidence;
2. note the moment you became aware of the breach: the UK GDPR notification deadline to the ICO runs from then (72 hours where the breach is likely to result in a risk; verify the text). If EU residents are affected and the business is subject to EU GDPR, the EU notification rules may apply too (lead authority, EU representative);
3. document what happened: what data, how many people, which systems, what was done;
4. assess the risk to individuals (special category data, financial data, passwords, volume);
5. check other obligations: NIS Regulations (if in scope), PECR breach rules for communications providers, contracts with customers, payment provider and card scheme rules (PCI DSS), insurer, Action Fraud / NCSC reporting where appropriate;
6. contact the DPO or a specialist data protection solicitor immediately and, if needed, an incident response firm.

Do not write the final notification to the ICO without validation; you may prepare a draft following the ICO's breach reporting form structure.

### Contact from a regulator (Trading Standards, CMA, ICO, HMRC, Ofcom, FCA, OPSS, ASA, MHRA, FSA)
1. note the response deadline in the document;
2. do not send responses without consulting a solicitor (or a tax adviser, for HMRC);
3. gather the requested documents and history; preserve evidence;
4. contact the specialist immediately. CMA direct enforcement under the DMCC Act can lead to substantial penalties; information notices have their own deadlines and sanctions.

### Letter before action, county court / sheriff court claim, chargeback wave
Solicitor, immediately. Procedural deadlines (e.g. acknowledgment of service, defence) are running. Note: Scotland and Northern Ireland have different procedures and courts.

### Possibly dangerous product, consumer accident
Product compliance specialist + solicitor. Check notification and recall obligations (General Product Safety Regulations 2005 in GB, EU GPSR in NI and the EU, sector rules), and OPSS/Trading Standards notification.

### Fraud, compromised customer accounts, mass payment disputes
Payment provider, security specialist, solicitor; may also be a personal data breach.

## 2. Thresholds by domain

Escalate (RED) when any of the following occurs.

| Domain | Situation | Specialist |
|---|---|---|
| Consumer | disputes, Trading Standards or CMA contact, repeated complaints, subscription model design, significant sales into the EU | consumer law solicitor (+ EU lawyer for EU sales) |
| Platforms | marketplace liability structure; Online Safety Act scope and risk assessments; Ofcom contact | technology/regulatory solicitor |
| Products | sector-regulated products with uncertain classification; imports without documentation; recalls; GB/NI/EU dual compliance | product compliance specialist; customs adviser |
| Data protection | special category data; large-scale profiling; systematic monitoring; DPIA; complex transfers; breaches; reliance on new DUAA bases with stakes | DPO or data protection solicitor |
| Cookies/marketing | ICO complaints or contact, large-scale campaigns, sector-specific marketing rules | DPO or solicitor |
| Tax | any registration, scheme or correction decision; overseas seller; EU OSS/IOSS; NI goods; HMRC enquiry | chartered tax adviser or chartered accountant |
| Payments | the business holds or redistributes other people's money; credit or BNPL offered directly; crypto; wallets | financial services solicitor |
| Security | uncertain NIS classification; connectable products (PSTI); incidents | security specialist; solicitor |
| AI | automated decisions with significant effects; AI used in hiring or credit; outputs used in the EU (AI Act) | specialist solicitor; DPO |
| IP/competition | infringement claims; exclusivity, parity or pricing clauses with stakes; CMA contact | IP or competition solicitor |
| General | large sums at stake; conflict between official sources; Scotland or NI-specific issues; cross-border structure UK/EU | solicitor in the relevant jurisdiction |

## 3. Preparing the file for the specialist

Offer to prepare a short file, which reduces the cost of the consultation:
1. **the situation** in 5–10 lines (role, what is sold, to whom, where, money and data flows, EU nexus);
2. **the precise question** for the specialist;
3. **established facts** and **missing facts**;
4. **identified acts** and their verification status (with official links);
5. **options** the user sees, with identified risks;
6. **documents to bring**: contracts, current terms and policies, screenshots of the checkout and cookie banner, the supplier list, correspondence with the regulator;
7. **running deadlines**.

The format is in response-format.md.

## 4. What not to do when escalating
- do not just say "consult a lawyer" without saying which type, in which jurisdiction, and why;
- do not refuse to explain the general rules;
- do not give a firm conclusion and then "cover" it with a recommendation to see a specialist; if the situation is RED, the conclusion is "this cannot be determined without a specialist", and the explanation is why.
