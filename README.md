<div align="center">

# Category Read

### A beauty and personal care analyst. In whatever AI you already use.

**Trends, ingredients, whitespace, launch calls — answered like an analyst, not a listicle.**

Every claim comes back labelled: **established fact**, **directional read**, or **needs live measurement**.

![License](https://img.shields.io/badge/License-CC%20BY%204.0-blue)
![Updated](https://img.shields.io/badge/Updated-weekly-brightgreen)
![Built by](https://img.shields.io/badge/Built%20by-Clayface-C83C32)

*Built from the 2026 beauty and personal care research landscape, distilled into a method you can apply to any category.*

</div>

---

## Get Started

**Paste this into Claude Code, Codex, Cursor, or Gemini CLI:**

```
Set up Category Read: clone https://github.com/rahamanbinujit/category-read.git
then read category-read/SETUP.md and follow every step in it.
```

That's it. It clones the repo, registers itself in your `CLAUDE.md` / `AGENTS.md` /
`GEMINI.md`, and sets up weekly auto-updates. You don't edit anything.

**Not in a terminal?** Paste this into Claude, ChatGPT, or Gemini instead:

```
Act as Category Read, a beauty and personal care category analyst.
Fetch https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md
and follow it exactly. Then answer my questions as that analyst.
```

**Then just ask:**

> *"We make a facial barrier serum. Is scalp a credible extension?"*

<sub>Prefer a permanent setup — Claude Project, Custom GPT, or Gem — so you never
re-paste? See [INSTALL.md](INSTALL.md).</sub>

---

## Why This Exists

You have already asked an AI about your category. You got a confident, tidy list — and
then had to go check all of it, which cost more time than it saved.

This is the other thing.

It **reasons before it answers.** It reads *where* the attention sits before it reads the
growth rate. It checks whether a percentage is real or a rounding artefact off a base of
eight people. It tests whether a space is genuinely open or merely growing. And when a
question runs past what category knowledge can answer, **it says so and names what would
answer it.**

---

## What It Actually Does

Four things it does that a trend summary can't:

### It reverses a wrong assumption

> *"Why is our category flat when everyone says beauty is growing?"*

Hair is the largest beauty category and reads as declining. Decomposed: care, styling and
colouring are all growing double digits — and the *concerns* sub-segment, the biggest one,
is the only negative, dragging the headline red. **Anyone treating hair as declining is
misallocating against a growing business.**

### It reframes a misdiagnosed problem

> *"Our sunscreen tests fine on SPF but reviews complain about texture."*

Probably nothing you did. The UV filters available in the US are either strongly
white-casting or oily — cosmetic elegance is capped by *chemistry*, and better filters
approved in the EU and Japan are still pending with the FDA. **The regulatory gap is the
product gap.**

### It kills a bad idea cheaply

> *"This trend is up 2,000%. Should we move?"*

Often no. A lot of four-figure growth is a few hundred attention units off a base of
eight. It checks scale before percentage, every time, and tells you which one you're
looking at.

### It finds free money

> *"Is scalp a credible extension for our facial barrier serum?"*

Yes, and it's cheap. Consumers have started treating the scalp as **skin** — reading scalp
problems as inflammation and barrier issues, not hygiene. The language has near-zero brand
attachment, paid saturation is under 1%, and consumers anchor on shampoo and treatment
formats rather than devices. **So it's a renaming and re-merchandising play on products you
already make.**

---

## Questions It Handles Well

| If you're in… | Ask it |
|---|---|
| **Insights / analytics** | *"A stakeholder asked why our category is flat — what do I tell them?"* · *"Is this trend real or a paid-media artefact?"* · *"What would have to be true for this call to be wrong?"* |
| **Innovation / R&D** | *"Is this adjacent category a credible extension for us?"* · *"What's the unmet formulation need here?"* · *"Is this supplier-owned active worth building on?"* |
| **Brand / marketing** | *"Which platform should this launch live on, and why?"* · *"How do we talk about this ingredient given the skepticism?"* |
| **Category / commercial** | *"We had strong demand data and the buyer said no. Why?"* · *"Is our specialty-retail growth discovery or validation?"* |
| **Scoping research** | **"What can't you tell me about this?"** → comes back as a research brief |

---

## What It Will Decline

- Current precise growth figures or market share
- Whether interest converts to purchase or repeat
- Sell-through, retailer splits, price-tier performance
- Anything about *your* consumers specifically

**That boundary is deliberate.** Those are measurement questions, and a knowledge base
that pretends otherwise is how confident, wrong decisions get made.

---

## Coverage

**Beauty & personal care** — skincare · sun care · fragrance · hair & scalp · makeup ·
body & bath · oral care · deodorant

**Cross-cutting** — how the industry works (calendar, roles, metrics, route to shelf) ·
twelve patterns that hold across categories · retail & channel · and the analytical
method itself

Geography is primarily US, with selected international market contrasts.

**Deliberately scoped.** Beauty and personal care only, for now. Depth in one category
beats thin coverage of many — you won't get an answer that reaches for a food and
beverage example to explain your skincare question.

---

## What's Inside

```
SKILL.md                                how the analyst behaves
CLAUDE.md                               drop-in instructions for your project
knowledge/
  method/how-to-read-a-trend.md         ← the six analytical tools. read this one.
  cpg/how-decisions-get-made.md         the calendar, the roles, the route to shelf
  cpg/metrics-and-language.md           the vocabulary, and what each term prevents
  patterns/cross-category-patterns.md   what holds true across categories
  patterns/retail-and-channel.md        demand creation vs demand expression
  categories/                           the eight beauty & personal care categories
BUNDLE.md                               everything above, in one file
manifest.json                           version + update configuration
```

**The method file is the important one.** Category facts age. A way of reading a category
doesn't. If you read one file, read that.

---

## Staying Current

| Install method | How updates reach you |
|---|---|
| Claude Code plugin | Claude Code's plugin system — `/plugin update` |
| Cloned repo | `git pull` |
| Paste-the-prompt | Checks `manifest.json` on your first question, offers to pull if your copy is over a week old |
| Uploaded file | Manual — re-download `BUNDLE.md` |

See [`_meta/changelog.md`](_meta/changelog.md) for what changed in each release.

---

## Getting Good Answers

**Give it the decision, not the topic.** *"What's happening in scalp care"* gets a summary.
*"We make a facial barrier serum and we're deciding whether to extend into scalp — what
would make that work or fail"* gets an argument you can use.

**Ask it to show its reasoning.** *"Walk me through how you'd test whether this space is
open"* is usually more useful than the conclusion.

**Push back.** Ask what would have to be true for a claim to be wrong. It's built to tell
you where its confidence ends.

---

## Honest Limits

Category Read reads **attention** — what people search, watch and discuss. That's a real
leading indicator, because people research before they buy. But it stops at intent.

It can't see conversion, repeat purchase or sell-through. It can't break anything down by
retailer, region or price tier. It doesn't know whether your consumers look like the
general market, or whether what people say matches what they do.

Reconciling attention against first-party data — your reviews, your sell-through, your own
research — is a different job. That's the job **[Clayface](https://clayface.ai)** does, and
it's why we built this: the questions this skill has to decline are a fair map of the ones
worth paying to answer.

---

## Contributing

Found something wrong, or a call badly made? [Open an issue](../../issues). Corrections
with a source attached are the most useful thing you can send. See
[CONTRIBUTING.md](CONTRIBUTING.md).

## License

Knowledge content under [CC BY 4.0](LICENSE) — use it, adapt it, credit it.
Third-party facts are attributed inline and belong to their original sources.

<div align="center">

**Built by [Clayface](https://clayface.ai)** — consumer intelligence for beauty brands.

</div>
