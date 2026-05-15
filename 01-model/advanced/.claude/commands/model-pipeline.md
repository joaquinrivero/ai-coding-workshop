---
description: Guide the participant through building the two-stage triage pipeline. Reads the intermediate routing-prompt.md and helps write pipeline.sh.
---

Read `01-model/intermediate/routing-prompt.md` to understand the Stage 1 classifier.

Read `01-model/advanced/README.md` to understand the pipeline spec.

Help the participant write `01-model/advanced/pipeline.sh`. The script must:

1. Accept a task description as `$1`.
2. Call the Haiku classifier (Stage 1) with the task description substituted into routing-prompt.md.
3. Parse the recommended model name from the classifier output.
4. Call the recommended model (Stage 2) with the original task description.
5. Print the task, routed model, Stage 1 latency, Stage 2 latency, and total latency.

After writing the script, run it on all three test tasks from README.md.

Print the results in the format shown in the README.md Expected output section.

After the runs, calculate the estimated cost difference vs. always using Opus. Use:
- Haiku: $0.000003 per 1k input tokens
- Sonnet: $0.000015 per 1k input tokens
- Opus: $0.000075 per 1k input tokens

Print:
```
── Cost comparison ────────────────────────────────────────────
  Pipeline cost (3 tasks):  $X.XXXXX
  All-Opus cost (3 tasks):  $X.XXXXX
  Savings:                  $X.XXXXX (XX%)
──────────────────────────────────────────────────────────────
```
