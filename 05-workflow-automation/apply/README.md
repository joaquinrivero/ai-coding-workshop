# 05-workflow / Apply — Test and tune your workflow

**Objective:** Add a CLAUDE.md to the automation from the concept exercise. Run it 3 times. Measure whether scoped context changes output consistency.

**Concept:** A bare `claude --print` call has no scoped context — Claude uses whatever is in the global CLAUDE.md (or nothing). Adding a CLAUDE.md alongside the prompt scopes the automation: it tells Claude exactly what this script is for, what it can use, and what to ignore. Scoped context makes output more consistent across runs.

**Time:** 30 minutes

## Steps

1. Start from the concept exercise: `my-prompt.md` and `run.sh` from `05-workflow-automation/concept/`.

2. Copy `run.sh` to this directory as `run-scoped.sh`. Modify it to start Claude from this directory so the CLAUDE.md here is loaded:
```bash
#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
```
Then in Claude Code, type your prompt from `../concept/my-prompt.md` directly in the chat.

3. Review the `CLAUDE.md` in this directory — it serves as the automation's scoped context (since `run-scoped.sh` starts Claude here). Add constraints specific to your task:
   - What is this automation? (one sentence, if not already clear)
   - What tool can Claude use? (Bash for reading inputs, if needed)
   - What should Claude not do? (no file writes, no network calls, no branching logic)
   - Output constraints: length, format, what to omit

4. Run `bash run-scoped.sh` three times. Record each output (save to `run-1.txt`, `run-2.txt`, `run-3.txt`).

5. Compare the three outputs:
   - Are the structure and format consistent across runs?
   - Did any run deviate significantly in tone, length, or content?
   - If yes: what in the prompt or CLAUDE.md should you tighten?

## Expected output

Three outputs that are structurally identical (same format, same sections) even if the specific content differs. If the outputs vary significantly, the prompt or CLAUDE.md is underspecified.

## Verification checklist

1. `run-scoped.sh` exists in this directory and loads the CLAUDE.md from this directory.
2. `CLAUDE.md` covers: automation purpose, allowed tools, prohibited actions, output constraints.
3. Ran the automation 3 times and saved outputs to run-1.txt, run-2.txt, run-3.txt.
4. Can state whether the three outputs are consistent and what, if anything, caused deviation.
5. Can describe one change to the CLAUDE.md or prompt that would reduce output variance.

## Workflow checkpoint — you're done

`my-workflow.md` is complete. You built one real automation using all four Core 4 pillars:

| Pillar | What you built | File |
|--------|---------------|------|
| Model | Chosen for your task | `my-workflow.md` |
| Prompt | Structured, tested | `02-prompting/apply/workflow-prompt.md` |
| Context | Scoped, trimmed | `03-context/apply/CLAUDE.md` |
| Tools | Wired into slash command | `.claude/commands/my-workflow.md` |

Fill in the Quality section of `my-workflow.md` with your scores.

Commit:
```bash
git add my-workflow.md 05-workflow-automation/apply/notes.md
git commit -m "05-workflow/apply: consistency test complete, average quality [score]/5"
```
