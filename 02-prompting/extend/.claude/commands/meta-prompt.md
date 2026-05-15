---
description: Test meta-prompt.md on three task descriptions and print the generated structured prompts. If meta-prompt.md does not exist, help write it first.
---

Check whether `02-prompting/advanced/meta-prompt.md` exists:
```bash
ls 02-prompting/advanced/meta-prompt.md 2>/dev/null
```

If it does not exist:
Ask: "Describe what your meta-prompt should do. What constraints should the generated prompts follow? What output format should they use?"

Wait for the response. Then help write `meta-prompt.md` based on the spec in README.md and the participant's constraints.

If it exists:
Read `02-prompting/advanced/meta-prompt.md`.

Test it on these three inputs by calling:
```bash
claude --print "<meta-prompt with input substituted>"
```

Input 1: "Summarize a pull request for a non-technical manager."
Input 2: "Find bugs in this Python function."
Input 3: "Write release notes from a list of git commits."

Print each generated prompt under a labeled heading.

After all three, print:
```
── Meta-prompt test complete ──────────────────────────────────
Review each generated prompt above. Could you use it as-is?
If a field is vague or missing, edit meta-prompt.md and re-run /meta-prompt.
──────────────────────────────────────────────────────────────
```
