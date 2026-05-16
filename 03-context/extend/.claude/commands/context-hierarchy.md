---
description: Guide the CLAUDE.md hierarchy design. Reviews the participant's root and package CLAUDE.md files for completeness, then tests them against a cross-package task.
---

Check whether `root-CLAUDE.md` exists in this directory:
```bash
ls 03-context/extend/root-CLAUDE.md 2>/dev/null
```

If it does not exist:
Ask: "What mono-repo are you using? Give me the root path and the names of two packages you want to cover."

Wait for the response. Then help write `root-CLAUDE.md`, `package-a-CLAUDE.md`, and `package-b-CLAUDE.md` based on the spec in README.md.

If root-CLAUDE.md exists:
Read all three CLAUDE.md files.

Check each for:
- Under 30 lines? (count with `wc -l`)
- Bullet list format (no prose paragraphs)?
- Covers the required fields from README.md?

Report any gaps.

Then ask: "What are the 3 cross-package tasks you want to test?"

For each task, print:
```
Task: <task description>
Relevant CLAUDE.md files: root-CLAUDE.md + <which package>
Expected constraints:
  - <from root>
  - <from package>
```

Confirm the analysis before testing. Then help the participant run one task in a Claude session with both CLAUDE.md files loaded.
