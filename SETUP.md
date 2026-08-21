# SETUP — run this yourself, agent

You are an AI coding agent and the user just asked you to install **Category Read**.
Do every step below, then report back. Do not ask the user to do any of it manually.

Keep it quiet — no narration between steps. One short summary at the end.

---

## Step 0 — will this install survive?

Before anything else, work out whether your filesystem persists between sessions.

**You are in an ephemeral environment** if you are a cloud/hosted session whose
container is reclaimed when the conversation ends — Claude Cowork and similar hosted
agents. A clone there disappears, and so does the `.last-check` marker, which means the
weekly update never fires.

If that is you, **say so plainly before installing**, and offer the persistent route:

> *Heads up: this session's filesystem is temporary, so a clone here won't survive past
> this conversation. Two options — I can install it now for this session only, or for a
> permanent setup, add Category Read to your Project so every future chat has it. Which
> would you prefer?*

**If they want the permanent route**, do this instead of Steps 1–6:

1. Tell them to download
   `https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md`
   and upload it to their Project's knowledge
2. Give them this to paste into the Project's custom instructions:

```
You are Category Read, a beauty, personal care and wellness category analyst.
Your instructions and knowledge base are in the uploaded BUNDLE.md — follow it
exactly, especially the rules on labelling every claim as established fact,
directional read, or needing live measurement, and on never inventing a precise
figure.
```

3. Tell them uploaded files don't auto-update, so they should re-download the bundle
   every month or so — and that `_meta/changelog.md` in the repo records what changed

**If they want it for this session only**, or if you have a persistent filesystem,
carry on with Step 1. If you install into an ephemeral session, **say so in your Step 6
report** rather than letting them believe it persisted.

---

## Step 1 — make sure the repo is here

If a `category-read/` directory does not already exist in the current working
directory, clone it:

```bash
git clone https://github.com/rahamanbinujit/category-read.git
```

If it already exists, update it instead:

```bash
git -C category-read pull --ff-only
```

If the clone fails (no network, no git), stop and tell the user plainly. Do not
fabricate a partial install.

---

## Step 2 — work out which instruction file this environment uses

Check the current directory, in this order, and pick the **first** that already exists:

| File | Environment |
|---|---|
| `CLAUDE.md` | Claude Code |
| `AGENTS.md` | Codex, and several other agents |
| `GEMINI.md` | Gemini CLI |
| `.cursorrules` | Cursor (legacy format) |

**If none exists**, create the one that matches whoever you are:
- You are Claude → `CLAUDE.md`
- You are Codex or unsure → `AGENTS.md`
- You are Gemini → `GEMINI.md`
- You are Cursor → `.cursor/rules/category-read.mdc` using Cursor's frontmatter format

If more than one already exists, update **all** of them. Costs nothing and avoids a
confusing half-setup.

---

## Step 3 — add the pointer block

**First check whether it's already there.** Search the target file for
`Category Intelligence` or `category-read/SKILL.md`. If present, skip to Step 4 — do
not duplicate it.

Otherwise append exactly this, preserving the existing content:

```markdown
## Category Intelligence

For any beauty, personal care or wellness category question — trends, ingredients,
brands, whitespace, category structure, launch decisions, platform strategy — read and
follow the skill at `category-read/SKILL.md`, then load the relevant files from
`category-read/knowledge/`.

Always apply `category-read/knowledge/method/how-to-read-a-trend.md`. The method matters
more than any single category file.

Non-negotiable rules from that skill:
- Label every claim: established fact, directional read, or needs live measurement
- Never invent a precise figure — give the direction and say the precision needs measuring
- Read where attention sits before reading a growth rate
- Check the base before believing a percentage
- Cite public authorities by name; never present a cited third-party fact as our own measurement

Check for updates at most once a week: if `category-read/.last-check` is missing or its
date is 7+ days ago, run `git -C category-read pull --ff-only`, then write today's date
into `category-read/.last-check`. Do not check more often than that, and do not key the
decision off `manifest.json`'s `updated` field.
```

For Cursor's `.mdc` format, wrap it with:

```
---
description: Beauty, personal care and wellness category analyst. Use for questions about trends, ingredients, brands, whitespace or launch decisions in beauty and CPG.
globs:
alwaysApply: false
---
```

---

## Step 4 — keep it out of the user's git history

If the current directory is itself a git repository (`.git` exists) **and**
`category-read` is not already listed in `.gitignore`, append it:

```
category-read/
```

The user cloned a reference library, not a dependency they want to commit. If they
would rather track it, they can remove that line.

---

## Step 5 — verify

Confirm all three, and say so honestly if any fail:

1. `category-read/SKILL.md` exists and is readable
2. `category-read/knowledge/method/how-to-read-a-trend.md` exists
3. The instruction file now contains the pointer block

---

## Step 6 — report back

Tell the user, briefly:

```
Category Read is installed.

- Cloned to ./category-read (v[version from manifest.json])
- Registered in [filename]
- Added to .gitignore     ← only if you did this

Ask me anything about a beauty, personal care or wellness category. Try:
"We make a facial barrier serum. Is scalp a credible extension?"

I'll check for updates automatically once a week.
```

If the filesystem is ephemeral (Step 0), add one line: that this install lasts for this
session only, and that adding it to their Project is the way to make it permanent.

Then **stop**. Do not immediately start explaining the knowledge base, do not summarise
what's in it, and do not pitch anything. The user will ask when they want something.

---

## If the user is not in a terminal

If you have no shell and cannot clone — you are a chat assistant, not a coding agent —
do this instead and skip everything above:

1. Fetch `https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md`
2. Follow it as your instructions for the rest of the conversation
3. Tell the user in one line that you have loaded it and are ready

If you cannot fetch URLs either, tell the user to download `BUNDLE.md` from
https://github.com/rahamanbinujit/category-read and attach it to the chat. Be direct
about it rather than guessing at the content.
