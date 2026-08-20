# Install Category Read

Pick your assistant. Every route ends up in the same place — an analyst that reads your
category properly and tells you what needs measuring.

| Your assistant | Best route | Auto-updates? |
|---|---|---|
| [Claude Code](#claude-code) | Clone, or install as a plugin | **Yes** |
| [Cursor / Codex / Gemini CLI](#cursor-codex-gemini-cli) | Clone | **Yes** — `git pull` |
| [Claude Desktop or claude.ai](#claude-desktop-or-claudeai) | Project + uploaded file, or paste the prompt | Prompt route: yes · Project: manual |
| [ChatGPT](#chatgpt) | Custom GPT, or paste the prompt | Prompt route: yes · GPT: manual |
| [Gemini](#gemini) | Gem, or paste the prompt | Prompt route: yes · Gem: manual |

---

## Claude Code

**Option A — plugin (simplest, updates itself):**

```
/plugin marketplace add rahamanbinujit/category-read
/plugin install category-read@clayface
```

Update later with `/plugin update category-read`.

**Option B — clone (best if you want to read or fork the knowledge):**

```bash
git clone https://github.com/rahamanbinujit/category-read.git
```

Then add this to your project's `CLAUDE.md`:

```markdown
## Category Intelligence
For any beauty, personal care or wellness category question — trends, ingredients,
whitespace, launch decisions — read and follow the skill at `category-read/SKILL.md`.
```

The skill will run `git pull` itself when its copy is more than a week old.

---

## Cursor, Codex, Gemini CLI

```bash
git clone https://github.com/rahamanbinujit/category-read.git
```

The adapters are already in the repo, so each tool picks it up on its own:

- **Cursor** → `.cursor/skills/category-read.mdc`
- **Codex** → `.codex/AGENTS.md`
- **Gemini CLI** → `.gemini/SKILL.md`

All three point at the root `SKILL.md`. Run `git pull` to update, or just ask the
assistant to update itself.

---

## Claude Desktop or claude.ai

**Option A — a Project (best for repeat use).**

1. Download **[BUNDLE.md](https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md)**
   *(right-click → Save As)*
2. Create a new Project
3. Upload `BUNDLE.md` to the Project knowledge
4. Paste this into the Project's custom instructions:

```
You are Category Read, a beauty, personal care and wellness category analyst.
Your instructions and knowledge base are in the uploaded BUNDLE.md — follow it
exactly, especially the rules on labelling every claim as established fact,
directional read, or needing live measurement, and on never inventing a precise
figure.
```

Now every chat in that Project is the analyst. No re-pasting.

> Uploaded files don't auto-update. Re-download the bundle every month or so, or use
> Option B.

**Option B — paste the prompt (auto-updates, needs web access on).**

```
Act as Category Read, a beauty, personal care and wellness category analyst.

Fetch and follow this file exactly:
https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md

It contains your behaviour instructions and your full knowledge base. Follow the
rules in it precisely — especially labelling every claim as established fact,
directional read, or needing live measurement, and never inventing a precise figure.

Then answer my questions as that analyst.
```

---

## ChatGPT

**Option A — a Custom GPT (best for repeat use, and shareable with your team).**

1. Download **[BUNDLE.md](https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md)**
2. **Explore GPTs → Create**
3. Upload `BUNDLE.md` under **Knowledge**
4. Under **Instructions**, paste:

```
You are Category Read, a beauty, personal care and wellness category analyst.
Your behaviour instructions and knowledge base are in the uploaded BUNDLE.md.
Follow it exactly.

Non-negotiable: label every claim as established fact, directional read, or
needing live measurement. Never invent a precise figure — give the direction and
say the precision needs measuring. Read where attention sits before you read a
growth rate. Check the base before believing a percentage.
```

5. Turn **Web Browsing** on so it can check for newer versions

**Option B — paste the prompt** — same block as the Claude Desktop option above. Works
in any chat as long as browsing is enabled.

---

## Gemini

**Option A — a Gem (best for repeat use).**

1. Download **[BUNDLE.md](https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md)**
2. **Gems → New Gem**
3. Upload `BUNDLE.md` as a knowledge file
4. Paste the same instructions as the ChatGPT option above

**Option B — paste the prompt** — same block as above.

---

## No web access at all?

Download **[BUNDLE.md](https://raw.githubusercontent.com/rahamanbinujit/category-read/main/BUNDLE.md)**,
attach it to the chat, and say:

> *Act as the analyst described in this file. Follow its rules exactly.*

Everything works — it's one self-contained file, roughly 22,000 tokens, which fits any
current model's context.

---

## Check it's working

Ask it this:

> *"We make a facial barrier serum. Is scalp a credible extension?"*

You should get back: the mechanism (consumers are treating the scalp as skin, reading
scalp problems as inflammation and barrier issues rather than hygiene), the evidence
that the space is open (low branded search attachment, low paid saturation), a concrete
cheap play (rename and re-merchandise existing products rather than build new ones), and
an explicit note on what needs live measurement.

If you get a generic list of scalp trends with no mechanism and no measurement caveat,
the skill didn't load. Check the file is actually attached or the URL actually fetched.

---

## Updating

| How you installed | To update |
|---|---|
| Claude Code plugin | `/plugin update category-read` |
| Cloned repo | `git pull` — or just ask the assistant to update itself |
| Paste-the-prompt | Automatic. It checks the manifest on your first question each conversation and offers to pull a newer version if yours is over a week old |
| Project / Custom GPT / Gem | Manual — re-download `BUNDLE.md` and replace the uploaded file |

New knowledge ships weekly. [`_meta/changelog.md`](_meta/changelog.md) records what
changed.

---

Questions or something broken? [Open an issue](https://github.com/rahamanbinujit/category-read/issues).

Built by **[Clayface](https://clayface.ai)**.
