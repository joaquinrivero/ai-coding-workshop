---
description: Help write a new slash command. Takes a description of what the command should check and produces a ready-to-use slash command markdown file.
---

Ask the participant: "Describe what your preflight command should check. List the preconditions — what must be true before you can work on your project? (e.g., Node version, env vars, repo state, running services)"

Wait for the response. Then:

Read `04-tooling/intermediate/preflight-template.md` to understand the format.

Based on the participant's preconditions, produce a complete slash command markdown file. For each precondition:

- Write a Bash command that checks it.
- Specify what "pass" means (non-zero exit code, specific string in output, file exists, etc.).
- Include the fix command if the check fails.

Format the output as a pass/fail table matching the style of the `/setup` command in this workshop.

Write the produced command to `.claude/commands/my-preflight.md`.

Confirm: "Slash command written to `.claude/commands/my-preflight.md`. Test it by running `/my-preflight` in a new Claude session."
