---
description: Help identify a weekly task to automate and write my-prompt.md and run.sh for it.
---

Ask: "Describe one task you do manually every week. Be specific — what input do you start with, what output do you produce, and how long does it take?"

Wait for the response.

Based on the description, write:

1. `05-workflow-automation/beginner/my-prompt.md` — a structured prompt for the task. Include:
   - Role appropriate to the task
   - Context: what Claude needs to know about the input
   - Task: the specific instruction
   - Output format: length, structure, tone

2. `05-workflow-automation/beginner/run.sh` — a bash script that calls:
```bash
#!/bin/bash
claude --print "$(cat "$(dirname "$0")/my-prompt.md")"
```

If the task needs an input file or argument, substitute it into the prompt:
```bash
#!/bin/bash
INPUT="${1:-default-value}"
PROMPT=$(sed "s|{{INPUT}}|$INPUT|g" "$(dirname "$0")/my-prompt.md")
claude --print "$PROMPT"
```

Make run.sh executable:
```bash
chmod +x 05-workflow-automation/beginner/run.sh
```

After writing both files, print:
```
── Files written ──────────────────────────────────────────────
  my-prompt.md   written
  run.sh         written and executable

Run it:
  bash 05-workflow-automation/beginner/run.sh

If the output is too generic, add more context to my-prompt.md.
──────────────────────────────────────────────────────────────
```
