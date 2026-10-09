# Domain: data protection (UK GDPR, DPA 2018, DUAA 2025)

Starting acts: acts-registry.md, section D. References to UK GDPR articles are indicative: confirm the text in the current revised version on legislation.gov.uk (the DUAA inserted and changed several articles). Always also check ICO guidance (some of it was being updated after the DUAA), tribunal and court decisions, and commencement of DUAA provisions. If EU residents' data is processed, also apply EU GDPR in parallel (domain-eu-interface.md).

Terminology: controller, processor, joint controllers, data subject, personal data breach, data protection impact assessment (DPIA), data protection officer (DPO), Information Commissioner's Office (ICO).

## Step 0: territorial scope and registration

- UK GDPR applies to processing in the context of a UK establishment, and to non-UK controllers/processors offering goods or services to, or monitoring, people in the UK (Art. 3). Non-UK businesses may need a **UK representative** (Art. 27; check the exemption).
- **ICO data protection fee**: most controllers must pay unless exempt (Data Protection (Charges and Information) Regulations 2018). Check the tier and exemptions.

## Step 1: roles

For each processing activity, determine:
- **controller** (decides purposes and means);
- **joint controllers** (Art. 26 arrangement);
- **processor** (processes on behalf of the controller; Art. 28 contract with minimum terms);
- **sub-processors**.

Typical situations to analyse, not assume:
- B2B SaaS storing its customers' customer data: usually processor for that data and controller for its own customers' data;
- marketplace and sellers: separate controllers, joint controllers or a combination;
- agency managing a client's website: usually processor;
- payment provider: often an independent controller for part of the data;
- ad platforms and pixels: possible joint controllership for collection (assimilated CJEU case law, e.g. Fashion ID: verify status).

## Step 2: data map

For each activity: what data, from whom, for what purpose, on what basis, for how long, who has access, where it is stored, to whom it is disclosed, whether it leaves the UK.

Watch for data collected without the user realising: logs, IPs, device identifiers, session recordings, SDK data, abandoned forms, data sent to AI providers.

## Step 3: lawful basis (Art. 6)

Per purpose, not per website:
- contract (order, delivery, account necessary for the service);
- legal obligation (tax and accounting records; check retention periods, e.g. HMRC and Companies Act requirements);
- legitimate interests (with a documented balancing test, LIA);
- **recognised legitimate interests** (introduced by the DUAA: a listed set of purposes where the balancing test is not required, e.g. certain security, crime prevention, safeguarding purposes; verify the list in the Annex and conditions; mostly not useful for marketing);
- clarification by the DUAA that direct marketing, intra-group transfers and network security **may** be legitimate interests (still subject to balancing; verify);
- consent (freely given, specific, informed, unambiguous, as easy to withdraw);
- special category data (Art. 9) and criminal offence data (Art. 10) need an additional condition, often in DPA 2018 Schedule 1, with an appropriate policy document in some cases.

PECR consent for cookies and marketing is a separate matter from the UK GDPR lawful basis. See domain-cookies-marketing.md.

## Step 4: transparency and rights

- privacy information (Arts. 13–14): complete, clear, accessible; must describe actual processing (check DUAA changes on further processing and research exceptions);
- rights: access, rectification, erasure, restriction, portability, objection, rights relating to automated decisions;
- **subject access requests**: the DUAA codified "reasonable and proportionate" searches and changed time-limit rules (clock stopping when clarification is needed); verify the current text and the commencement date;
- **complaints**: under the DUAA, controllers must have a complaints process and data subjects should complain to the controller first (verify commencement and the response timescale);
- **automated decision-making** (Arts. 22A–22D as inserted by the DUAA): significant decisions based solely on automated processing are generally allowed with safeguards (information, ability to make representations, human intervention, contest), but restricted where special category data is involved; verify the text. E.g. automatic order rejection based on a fraud score.

## Step 5: accountability and documentation

- record of processing activities (Art. 30; check the small organisation exemption and its conditions);
- data protection by design and by default (Art. 25);
- DPIA (Art. 35): ICO list of high-risk processing; large-scale profiling, special category data, systematic monitoring, children's data, innovative technology are signals;
- DPO (Art. 37): check the criteria; the DUAA did not abolish the DPO (the earlier "senior responsible individual" proposal was dropped, according to the compiler: verify);
- processor contracts and sub-processor lists;
- retention and deletion policies, including backups.

## Step 6: security and breaches

- appropriate technical and organisational measures (Art. 32); see domain-security.md;
- notify personal data breaches to the ICO within 72 hours of becoming aware, where the breach is likely to result in a risk (Art. 33); processors notify controllers without undue delay;
- inform data subjects where high risk (Art. 34);
- internal breach log, including non-notified breaches.

## Step 7: transfers outside the UK (Chapter V)

- identify all non-UK providers (including support access from abroad);
- mechanisms: UK adequacy regulations (the EEA, and "data bridges" e.g. the UK–US data bridge for certified organisations; check status), the IDTA or UK Addendum to EU SCCs plus a transfer risk assessment, BCRs, derogations;
- the DUAA introduced a new "data protection test" for adequacy and transfers ("not materially lower" standard): check how it affects the transfer risk assessment;
- inform data subjects about transfers.

## Step 8: children

Check: the age of consent for information society services under UK law (DPA 2018; do not quote the age from memory), the ICO Age Appropriate Design Code (Children's Code) for services likely to be accessed by children, DUAA provisions on children's higher protection, Online Safety Act overlap.

## Step 9: employees and monitoring

Employee monitoring (CCTV, productivity tools, emails): lawful basis, transparency, DPIA, ICO employment practices guidance; Investigatory Powers rules on interception (check).

## Enforcement and sanctions

ICO powers: information notices, assessment notices, enforcement notices, monetary penalties (UK GDPR maximum levels; verify), reprimands. Data subjects may claim compensation in court. Do not quote fine amounts from memory.

## Common pitfalls
- privacy notice copied from a template or referencing only EU GDPR;
- consent used as the basis for everything;
- relying on "recognised legitimate interests" for marketing or analytics;
- missing Art. 28 terms with providers;
- transfers to the US or elsewhere without a verified mechanism;
- real data in test environments, logs with personal data kept indefinitely;
- data sent to AI providers without analysis;
- not paying the ICO fee;
- assuming DUAA changes apply to EU residents' data (they do not, under EU GDPR).

## Specific escalation
- breach with risk: DPO or data protection solicitor, immediately (72 hours);
- special category data, large-scale profiling, systematic monitoring, children: DPO/solicitor (DPIA);
- ICO complaint or contact: solicitor;
- complex international transfers, dual UK/EU regimes: DPO/solicitor with UK and EU practice.
