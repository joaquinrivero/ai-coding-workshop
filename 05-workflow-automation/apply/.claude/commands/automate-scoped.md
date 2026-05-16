---
description: Add scoped context to the concept automation and test output consistency across three runs.
---

Check whether `05-workflow-automation/concept/my-prompt.md` exists:
```bash
ls 05-workflow-automation/concept/my-prompt.md 2>/dev/null
```

If it does not exist:
> "Complete the concept exercise first — `05-workflow-automation/concept/my-prompt.md` is needed here."

If it exists:
Read `05-workflow-automation/concept/my-prompt.md` to understand the automation task.

Ask: "What constraints does this automation need? What should Claude not do? What output format is required every time?"

Wait for the response. Then write `05-workflow-automation/apply/CLAUDE.md` with:
- One-sentence description of the automation
- Allowed tools
- Prohibited actions from the participant's answer
- Output constraints from the participant's answer

In Claude Code, type your prompt from ../concept/my-prompt.md directly in the chat.

Make it executable. Then run it 3 times, saving each output:
```bash
bash run-scoped.sh > run-1.txt
bash run-scoped.sh > run-2.txt
bash run-scoped.sh > run-3.txt
```

Compare the three output files:
```bash
diff run-1.txt run-2.txt
diff run-2.txt run-3.txt
```

Print a summary:
```
── Consistency report ─────────────────────────────────────────
Run 1 vs 2: <identical / N lines differ>
Run 2 vs 3: <identical / N lines differ>

If runs differ significantly, tighten the output format in my-prompt.md or add
more constraints to CLAUDE.md.
──────────────────────────────────────────────────────────────
```
