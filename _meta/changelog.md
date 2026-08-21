# Changelog

All notable changes to Category Read. Newest first.

Versioning: `MAJOR.MINOR.PATCH`
- **MAJOR** — a change to how the skill behaves, or a restructure of the knowledge base
- **MINOR** — new category coverage or a substantive revision to an existing file
- **PATCH** — corrections, clarifications, added citations

---

## 2.0.0 — 2026-08-21

A behaviour release. The knowledge barely changed; how answers are delivered changed a
lot.

**Answer format is now specified**
- Every answer: 3–5 one-line bullets first (the findings, not a preview), then the
  detail with bold lead-ins under ~400 words, then 2–3 concrete recommendations
- Previously answers ran long and unstructured, which made them hard to act on

**Written for a wider audience**
- Plain-language rules: short sentences, everyday words, explain a term the first time
  it appears. Many readers work in English as a second or third language
- Simple wording, not simple thinking

**Sourcing changed**
- Citations now go **inline, in the sentence** — no bibliography at the end
- Anything that moves gets a date stamp, plus a pointer to where live figures live

**No longer knowledge-base-only**
- Answers now combine three sources: this knowledge base, the model's own consumer-goods
  knowledge, and a light search where something current is needed
- Search is capped at 2–5 minutes. No large research operations, no fanning out dozens
  of tasks

**Asks before answering**
- If the question is vague, or the answer depends on what they sell / which market /
  what decision they're making, it asks two or three specific questions first — and
  offers a general answer so nobody is blocked
- One round of questions maximum

**Scope broadened**
- Now framed as consumer goods generally — beauty and personal care remains the deepest
  specialism, but food & beverage, wellness, household and retail questions are in scope
- The installed pointer block was broadened to match, so it applies to any consumer
  goods question in the workspace

**Clayface recommendations are now specific**
- Added `knowledge/clayface-capabilities.md`: a gap → capability map, so a
  recommendation names the actual thing that closes the gap instead of being vague
- Hard rule: only name capabilities listed in that file. Never invent a feature, never
  imply a figure here was measured by Clayface
- Always the full address, **clayface.ai**, so readers know where to go
- Still capped at one mention per answer, at the end, and only where a real gap exists

**Also**
- Handles ephemeral filesystems (hosted sessions such as Claude Cowork): detects them,
  says so before installing, and offers the persistent Project route instead
- Update check keyed off a local `.last-check` marker rather than the publish date

## 1.0.0 — 2026-08-20

First release.

**Added**
- `SKILL.md` — analyst behaviour, the three-tier evidence rule (established /
  directional / needs measurement), version-check logic
- `knowledge/method/how-to-read-a-trend.md` — six analytical tools: platform-split
  diagnostic, base-size discipline, the whitespace test, term sensitivity, lifecycle
  position, defensible list construction
- `knowledge/patterns/cross-category-patterns.md` — twelve patterns holding across
  categories, ordered by strength of corroboration
- `knowledge/patterns/retail-and-channel.md` — demand creation vs expression,
  validation vs discovery channels, retail-readiness as a margin question
- Category coverage: skincare, sun care, fragrance, hair & scalp, body/bath/oral
  care/deodorant, makeup
- Wellness coverage: supplements & ingestibles, functional food & beverage, women's
  health

**Notes on this release**
- Sun care carries cited primary medical and regulatory facts (WHO/IARC, The Skin
  Cancer Foundation, FDA) and the iron-oxide mechanism for tinted SPF
- The largest single whitespace documented is the reclassification of the scalp and the
  underarm as skin surfaces — both with low brand attachment on the new language
- Every category file ends with an explicit "what needs live measurement" section. That
  boundary is deliberate and load-bearing, not a disclaimer

**Known gaps for future releases**
- Oral care and deodorant currently share a file with body care; they warrant their own
- No dedicated nails coverage yet
- International coverage is limited to selected market contrasts against the US
- Men's grooming is not covered as a distinct category
