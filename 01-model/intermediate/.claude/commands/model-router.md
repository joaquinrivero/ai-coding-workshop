---
description: Test the routing-prompt.md classifier on three tasks. Runs each task description through the classifier on Haiku and prints the recommendation and reason.
---

Read `01-model/intermediate/routing-prompt.md` to get the classifier prompt.

For each of the following task descriptions, run the classifier on Haiku:

Task 1: "Summarize this 200-word blog post in one sentence."
Task 2: "Design the data model for a multi-tenant SaaS billing system."
Task 3: "Fix a typo in a README."

For each task, call:
```bash
claude --model claude-haiku-4-5-20251001 --print "<routing-prompt with task inserted>"
```

Print the result as:
```
Task: "<task description>"
Recommendation: <model>
Reason: <one sentence>
```

After all three, print:
```
── Routing test complete ──────────────────────────────────────
If any recommendation is wrong, edit routing-prompt.md and re-run /model-router.
──────────────────────────────────────────────────────────────
```
