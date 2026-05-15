---
description: Guide the CLAUDE.md before-and-after comparison. Asks for a target directory, checks whether it has a CLAUDE.md, and prompts the participant to ask the comparison question.
---

Ask: "What directory do you want to use for this exercise? Give me the path (e.g. ~/dev/my-project). It should have some files but no CLAUDE.md yet."

Wait for the response. Then check:
```bash
ls <their-path>/CLAUDE.md 2>/dev/null && echo "CLAUDE.md present" || echo "No CLAUDE.md"
```

If CLAUDE.md is present:
> "That directory already has a CLAUDE.md. For this exercise, use a directory without one — or temporarily rename it: `mv CLAUDE.md CLAUDE.md.bak`."

If no CLAUDE.md:
Print:
```
── Step 1: No CLAUDE.md baseline ──────────────────────────────
Open a Claude session in <their-path> and ask:

  "What is this project? What does it do, what conventions does it use,
   and what should I know before working in it?"

Record the response. Then return here and run /context-compare again
after you have written a CLAUDE.md.
──────────────────────────────────────────────────────────────
```

If the participant says they have already done the first run and want to check the second:
Read their CLAUDE.md (`cat <their-path>/CLAUDE.md`).

Comment on whether the CLAUDE.md covers:
- Project description (one sentence)
- Language and frameworks
- Conventions
- Constraints ("do not touch X")

If any are missing, ask the participant to add them before the second run.
