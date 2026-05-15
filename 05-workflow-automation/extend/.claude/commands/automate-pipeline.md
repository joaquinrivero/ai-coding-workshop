---
description: Guide building the programmable pipeline. Reads pipeline-template.md and prompt.md, then helps adapt the prompt and write the wrapper script.
---

Read `05-workflow-automation/advanced/pipeline-template.md` to understand the pipeline structure.

Read `05-workflow-automation/advanced/prompt.md` to see the starting prompt.

Ask: "What real task from your team do you want this pipeline to run? Describe the task and what inputs it needs at runtime (dates, file paths, repo names, etc.)."

Wait for the response. Then:

1. Help adapt `prompt.md` for their task. Replace the placeholder description with their task. Add `{{PLACEHOLDERS}}` for each runtime input.

2. Ask: "Which runtime do you want for the wrapper? bash, Python (uv), or TypeScript (Bun)?"

3. Write the wrapper based on their choice:

For bash (`pipeline.sh`):
```bash
#!/bin/bash
set -euo pipefail
# Trigger: <document how this runs>
PLACEHOLDER_1="${1:?Usage: pipeline.sh <placeholder1> [placeholder2]}"
PLACEHOLDER_2="${2:-default}"

PROMPT=$(sed \
  -e "s|{{PLACEHOLDER_1}}|$PLACEHOLDER_1|g" \
  -e "s|{{PLACEHOLDER_2}}|$PLACEHOLDER_2|g" \
  "$(dirname "$0")/prompt.md")

echo "── Pipeline run ─────────────────────────────"
echo "PLACEHOLDER_1: $PLACEHOLDER_1"
echo "PLACEHOLDER_2: $PLACEHOLDER_2"
echo ""
claude --print "$PROMPT"
echo "────────────────────────────────────────────"
```

4. Make the script executable: `chmod +x pipeline.sh`

5. Help them test it with real arguments.

6. Ask which trigger they want (cron/git hook/Makefile) and help them set it up.

Print:
```
── Pipeline built ─────────────────────────────────────────────
  prompt.md       adapted with placeholders
  pipeline.sh     written and executable
  Trigger:        <cron/hook/Makefile — what was configured>

Test: bash 05-workflow-automation/advanced/pipeline.sh <your-args>
──────────────────────────────────────────────────────────────
```
