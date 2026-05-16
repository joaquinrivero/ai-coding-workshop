---
description: Pre-session environment check for the AI Coding Workshop. Verifies Claude version, API key, git identity, and module files. Run this before the first session.
---

Run all checks below in order. Then print a single status table summarizing results and any required fixes.

## Check 1 — Claude version

Run:
```bash
claude --version
```

Record the version string.

## Check 2 — API key

Run:
```bash
echo ${#ANTHROPIC_API_KEY}
```

Pass: output is a number greater than 0.
Fail: output is 0 or empty.

Fix if failing: set `ANTHROPIC_API_KEY` in your shell environment or copy `.env.sample` to `.env` and add your key.

## Check 3 — Git identity

Run:
```bash
git config user.name && git config user.email
```

Pass: both lines return non-empty values.
Fail: either line is empty.

Fix if failing:
```bash
git config --global user.name "Your Name"
git config --global user.email "you@adobe.com"
```

## Check 4 — Module files

For each module, check that the CLAUDE.md and the exercise slash command exist. Run:

```bash
for module in 01-model 02-prompting 03-context 04-tooling 05-workflow-automation; do
  echo "=== $module ==="
  ls "$module/CLAUDE.md" 2>/dev/null && echo "CLAUDE.md present" || echo "CLAUDE.md MISSING"
  find "$module" -path '*/.claude/commands/*.md' | head -1
done
```

Pass: each module shows CLAUDE.md present and at least one slash command path.
Fail: any module shows MISSING or no slash command path.

## Print status table

After all checks, print this exact format:

```
── AI Coding Workshop: pre-flight check ─────────────────

  Claude version      X.X.X
  ANTHROPIC_API_KEY   ✅ set / ❌ not set
  Git identity        ✅ name + email set / ❌ missing  [fix command if ❌]
  01-model            ✅ ready / ❌ files missing
  02-prompting        ✅ ready / ❌ files missing
  03-context          ✅ ready / ❌ files missing
  04-tooling          ✅ ready / ❌ files missing
  05-workflow-auto    ✅ ready / ❌ files missing

──────────────────────────────────────────────────────────────
```

## After the table

If everything is ✅:
> "You're ready — start with 00-installation/README.md and work through each module in order."

If ANTHROPIC_API_KEY is ❌:
> "Set ANTHROPIC_API_KEY before starting. Copy .env.sample to .env and add your key, or export it in your shell."

If git identity is ❌:
> "Set git identity before starting — several exercises require a clean working tree and commits."

If any module is ❌:
> "Run `git status` to check for missing files. If you cloned the repo but some files are missing, run `git pull`."

## Step 6: Choose your workflow

Your workshop builds one real automation end-to-end. Each Apply exercise adds one layer. By Module 04 you have a working `/my-workflow` slash command to keep.

Ask the user: "What's one task you repeat at Adobe that you'd automate?"

Good candidates:
- Generating a commit message from a git diff
- Summarizing yesterday's git log into standup bullet points
- Writing a structured PR description from a diff
- Screening a changed file for common bugs before committing
- Drafting a response to a recurring support ticket type

Once they name their task, create `my-workflow.md` in the repo root with this content (replace the placeholder with their actual task):

```markdown
# My workflow

## What it does
[their task — one sentence, e.g. "Generate a structured PR description from a git diff"]

## Core 4 layers

### Model (fill in after Module 01 Apply)
Model: [FILL IN — claude-haiku-4-5 | claude-sonnet-4-6 | claude-opus-4-7]
Reason: [FILL IN — one sentence]

### Prompt (fill in after Module 02 Apply)
Prompt file: `02-prompting/apply/workflow-prompt.md`
Status: not started

### Context (fill in after Module 03 Apply)
CLAUDE.md: `03-context/apply/CLAUDE.md`
Words: [FILL IN] / 200 max

### Slash command (fill in after Module 04 Apply)
Command: `/my-workflow`
File: `.claude/commands/my-workflow.md`

## Quality (fill in after Module 05 Apply)

| Run | Quality (1-5) | Format match | Notes |
|-----|--------------|--------------|-------|
| 1   |              |              |       |
| 2   |              |              |       |
| 3   |              |              |       |

Average quality: /5
Consistency score: /5
```

Then stage and commit it:
```bash
git add my-workflow.md
git commit -m "setup: workflow chosen"
```

Print: ✅ Workflow chosen. Each Apply exercise adds one layer to `my-workflow.md`.
