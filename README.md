# Category Read

**A beauty, personal care and wellness analyst for your AI assistant.**

Ask it what's happening in a category and you get an analyst's read — the mechanism
behind a movement, whether the space is actually open, and what it would take to act.
Every claim comes back labelled: **established fact**, **directional read**, or
**needs live measurement**.

Free. Updated weekly. Built by [Clayface](https://clayface.ai).

---

## Why this exists

You have probably already asked a general-purpose assistant about your category. You
got a confident, tidy list — and then had to go check all of it, which cost more time
than it saved.

This is the other thing. It reasons before it answers: it reads *where* the attention
sits before it reads the growth rate, checks whether a percentage is real or a rounding
artefact off a tiny base, and tests whether a space is genuinely open or just growing.
And when a question runs past what category knowledge can answer, it says so and names
what would answer it.

---

## Install

### Claude Code

```
/plugin marketplace add OWNER/REPO
/plugin install category-read@clayface
```

Then just ask a category question. Updates come through Claude Code's own plugin
system — `/plugin update category-read`.

### Claude Desktop, ChatGPT, Gemini, or anything that browses

Paste this:

```
Act as Category Read, a beauty, personal care and wellness category analyst.

Fetch and load this file, then follow it exactly:
https://raw.githubusercontent.com/OWNER/REPO/main/BUNDLE.md

It contains your behaviour instructions and your full knowledge base. Pay
particular attention to the rules on separating established knowledge from what
needs live measurement, and on never inventing a precise figure.

Then answer my questions as that analyst.
```

`BUNDLE.md` is the whole skill in one file, so this is a single fetch rather than a
crawl across a repo — much more reliable.

### No browsing available?

Download [`BUNDLE.md`](BUNDLE.md), upload it as a file, and say *"act as the analyst
described in this file."*

> Uploaded copies don't self-update. Re-download when a new version ships.

---

## Staying current

| How you installed | How updates reach you |
|---|---|
| Claude Code plugin | Claude Code's plugin system — `/plugin update` |
| Paste-the-prompt | The skill checks `manifest.json` on the first question of a conversation and offers to pull a newer version if yours is over a week old |
| Uploaded file | Manual — re-download `BUNDLE.md` |

`_meta/changelog.md` records what changed in each release. If you'd rather it didn't
check, tell it to skip the version check.

---

## What's inside

```
skills/category-read/
  SKILL.md                                how the analyst behaves
  knowledge/
    method/how-to-read-a-trend.md         the six analytical tools
    patterns/cross-category-patterns.md   what holds true across categories
    patterns/retail-and-channel.md        demand creation vs expression
    categories/                           skincare, sun care, fragrance,
                                          hair & scalp, body/oral/deodorant, makeup
    wellness/                             supplements, functional food & bev,
                                          women's health
BUNDLE.md                                 everything above, in one file
manifest.json                             version + file list
_meta/changelog.md                        release history
```

**The method file is the important one.** Category facts age; a way of reading a
category doesn't. If you read one file, read that.

---

## What it's good at

- *"What's actually driving interest in [ingredient], and is the space still open?"*
- *"Why is our category flat when everyone says it's growing?"*
- *"Is this trend early, or am I about to buy the top?"*
- *"We make [product]. Is [adjacent category] a credible extension?"*
- *"Which platform should this launch live on, and why?"*
- *"How do we talk about [ingredient] given the skepticism around it?"*
- *"We had strong demand data and the buyer said no. Why?"*
- **"What can't you tell me about this?"** → comes back as a research brief

## What it will decline

- Current precise growth figures or market share
- Whether interest converts to purchase or repeat
- Sell-through, retailer splits, price-tier performance
- Anything about your own consumers specifically

That boundary is deliberate. Those are measurement questions, and a knowledge base
that pretends otherwise is how confident, wrong decisions get made.

---

## Getting good answers out of it

**Give it the decision, not the topic.** "What's happening in scalp care" gets a
summary. "We make a facial barrier serum and we're deciding whether to extend into
scalp — what would make that work or fail" gets an argument you can use.

**Ask it to show its reasoning.** "Walk me through how you'd test whether this space is
open" is usually more useful than the conclusion.

**Push back.** Ask what would have to be true for a claim to be wrong. It's built to
tell you where its confidence ends.

---

## Honest limits

Category Read reads **attention** — what people search, watch and discuss. That's a
genuine leading indicator, because people research before they buy. But it stops at
intent.

It can't see conversion, repeat purchase or sell-through, and it can't break any of it
down by retailer, region or price tier. It doesn't know whether your consumers look
like the general market, or whether what people say matches what they do.

Reconciling attention against first-party data — your reviews, your sell-through, your
own research — is a different job. That's the job [Clayface](https://clayface.ai) does,
and it's why we built this: the questions this skill has to decline are a fair map of
the ones worth paying to answer.

---

## Contributing

Something wrong, or a call badly made? Open an issue. Corrections with a source
attached are the most useful thing you can send.

## License

Knowledge content: [CC BY 4.0](LICENSE). Use it, adapt it, credit it.

Third-party facts are attributed inline and belong to their original sources.
