---
description: Guide through applying role-prompting, chain-of-thought, and few-shot to the ticket classification task. Runs each variant and prints outputs for comparison.
---

Read `02-prompting/intermediate/README.md` steps 2–5 to understand the task.

Ask the participant: "Have you written your baseline, role, chain-of-thought, and few-shot variants? If yes, tell me the filenames. If no, I can help you write them now."

Wait for the response.

If they have written the variants: run each one with `claude --print "$(cat <filename>)"` and print the outputs in sequence, each under a labeled heading (Baseline / Role / Chain-of-thought / Few-shot).

If they have not written the variants: help them write each one as a file in this directory:
- baseline.md — the task with no technique
- role.md — same task with a role prefix ("You are a senior support engineer...")
- cot.md — same task with "Think through each ticket step by step before classifying."
- few-shot.md — same task with 2 worked examples prepended

After writing, run all four variants and print the outputs with labeled headings.

End with:
```
── Techniques comparison complete ─────────────────────────────
Fill in the observation table in README.md.
──────────────────────────────────────────────────────────────
```
