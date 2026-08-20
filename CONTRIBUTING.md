# Contributing to Category Read

This is a knowledge base about consumer categories. The most valuable contribution is a
**correction with a source attached.**

## Reporting something wrong

Open an issue with:

1. **The file and the claim** — quote the line
2. **What's wrong** — factually incorrect, out of date, or badly reasoned
3. **A source** if you have one — a regulator, health body, published study, or named
   market source. A source makes a correction actionable immediately

We would rather hear that something is wrong than have it sit there being wrong.

## Suggesting new coverage

Known gaps are listed at the bottom of `_meta/changelog.md`. If you want a category we
don't cover, say which category and what decision you'd be using it for — the second
part shapes how it gets written.

## What we will not merge

- **Precise figures without a citable source.** The whole credibility of this project
  rests on not inventing numbers. A number that can't be traced doesn't go in.
- **Claims presented as our own measurement.** Anything measured belongs to whoever
  measured it, cited by name.
- **Brand promotion.** If a contribution reads as marketing for a specific brand, it's
  out regardless of accuracy.
- **Medical or dosing guidance.** We give the established clinical position and cite
  it. We don't advise.

## Editorial standards

If you're writing or revising a knowledge file:

- **Lead with the position**, not a preamble or a definition
- **Get to the mechanism.** "X is growing" is not a finding. *Why* it's growing and
  what that forces you to do is a finding
- **Pair every growth claim with scale and lifecycle position**
- **Mark confidence honestly** in the frontmatter, and flag where a claim rests on a
  single observation rather than several
- **End every category file with "what needs live measurement."** That section is
  load-bearing, not a disclaimer
- **Flag cultural and regulatory risk in the same breath as the opportunity**, never as
  a footnote

## After changing knowledge files

Rebuild the single-file bundle before opening the PR:

```bash
./scripts/build-bundle.sh
```

Then bump `version` and `updated` in `manifest.json`, increment the `revision` on any
changed file in its `files` entry, and add a `_meta/changelog.md` entry.
