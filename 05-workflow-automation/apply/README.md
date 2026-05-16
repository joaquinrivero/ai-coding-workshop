# 05-workflow / Apply — Test and tune your workflow

**Objective:** Add CLAUDE.md to the automation. Run it three times. Measure output consistency.

**Concept:** A bare `claude --print` call has no scoped context. Claude uses global CLAUDE.md or nothing. Add CLAUDE.md beside the prompt to scope the automation. Scoped context makes output more consistent.

**Time:** 30 minutes

## Steps

1. Start from the concept exercise: `my-prompt.md` and `run.sh` from `05-workflow-automation/concept/`.

2. Copy `run.sh` to this directory as `run-scoped.sh`. Start Claude from this directory:
```bash
#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
```
Then in Claude Code, type your prompt from `../concept/my-prompt.md` directly in the chat.

3. Review `CLAUDE.md` in this directory. It scopes the automation. Add constraints for your task:
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

Three outputs use the same format and sections. Specific content may differ. Large variation means the prompt or CLAUDE.md is underspecified.

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
