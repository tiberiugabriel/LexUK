# Domain: cookies, tracking, electronic marketing (PECR)

Starting acts: acts-registry.md, section D (PECR, UK GDPR, DUAA 2025). Verify live, including the DUAA amendments to PECR and the ICO's updated guidance on storage and access technologies. For EU users, the EU ePrivacy rules of the user's Member State apply (domain-eu-interface.md).

## Core principle

Two regimes apply in parallel and must be analysed separately:
1. **PECR (regulation 6)**: storing information on, or accessing information on, the user's terminal equipment (cookies, local storage, pixels, fingerprinting, SDKs) requires clear and comprehensive information and consent, except where an exemption applies.
2. **UK GDPR**: processing of personal data obtained through these technologies needs a lawful basis, transparency, retention limits, a transfer mechanism, etc.

Do not conclude "it's lawful because we have a legitimate interest" or "it's not personal data, so it doesn't matter": PECR applies whether or not the information is personal data.

## Exemptions (check the current text of regulation 6 and its schedule)

Traditionally: strictly necessary for the service explicitly requested, and for transmitting a communication. The DUAA added further exemptions (according to the compiler and secondary sources; verify the exact wording and commencement), including for:
- statistical purposes (analytics) to improve the service, under conditions (e.g. clear information and a simple way to object; data used only for that purpose; check whether third-party analytics qualify);
- appearance or functionality adapting to user preferences;
- security and fraud prevention;
- emergency assistance (location).

Advertising, remarketing, cross-site tracking and profiling remain consent-based. Do not stretch the exemptions.

## What to check on the site or app

### Inventory
- all cookies and similar technologies: name, provider, purpose, duration, first or third party, consent or exemption;
- SDKs in mobile apps and what they transmit on first launch;
- ad pixels, analytics, session recording, chat widgets, maps, embedded videos, third-party fonts.

### Consent mechanism
- nothing consent-based loads before the user's choice (check technically, not just declaratively);
- rejecting is as easy as accepting (ICO expects a "reject all" option at the same level: verify current guidance);
- no pre-ticked boxes, no "continued browsing = consent";
- granular by purpose;
- withdrawal as easy as giving consent;
- record of consent;
- for exempt analytics: information and the means to object as required.

### Specific tools
- Google Analytics, Meta Pixel, TikTok Pixel, Google Ads, LinkedIn Insight: consent before loading (unless a verified exemption truly applies to a configuration), transfers, possible joint controllership;
- "consent mode" setups: check what is still sent before consent.

## Electronic marketing

### Email and SMS (PECR "electronic mail")
- unsolicited marketing to individual subscribers (consumers, sole traders, some partnerships) requires prior consent, unless the **soft opt-in** applies;
- soft opt-in: contact details obtained in the course of a sale or negotiations, similar products and services of the same sender, opportunity to refuse at collection and in every message; verify conditions; the DUAA extended the soft opt-in to charities (check);
- **corporate subscribers** (companies, LLPs, Scottish partnerships, government): consent not required by PECR, but identification and opt-out are, and UK GDPR still applies to named employees' addresses;
- sender identity and a valid unsubscribe address in every message;
- proof of consent (when, how, what wording).

### Calls
- live calls: screen against the Telephone Preference Service (TPS/CTPS) unless consent; automated calls require prior consent; specific rules for claims management and pensions (bans; verify).

### Push notifications, WhatsApp, in-app messages
- check whether they are "electronic mail" under PECR; OS permission does not equal marketing consent.

### Profiling and remarketing
- custom audiences (uploading customer lists): lawful basis, transparency, roles, transfers;
- remarketing based on site behaviour: PECR consent + UK GDPR basis;
- advertising to children: CAP Code, OSA, Children's Code.

## Enforcement

The ICO enforces PECR. The DUAA increased PECR fines to UK GDPR levels (according to secondary sources; verify). Do not quote amounts from memory.

## Common pitfalls
- a banner that only informs ("we use cookies") without blocking;
- big "Accept", hidden "Reject";
- a tag manager loading scripts regardless;
- treating the new analytics exemption as covering ad pixels;
- the cookie list differing from reality;
- purchased email lists for consumer marketing;
- soft opt-in for people who never bought or negotiated;
- assuming B2B email marketing is unregulated (UK GDPR still applies; sole traders count as individuals).

## Specific escalation
- ICO complaint or contact about cookies or marketing: solicitor/DPO;
- large-scale campaigns with profiling or sensitive data: DPO;
- reliance on the new exemptions for non-trivial tracking: DPO.
