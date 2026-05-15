# CLAUDE.md — 04-tooling intermediate

- Exercise: 04-tooling intermediate — slash command authoring
- Allowed tools: Bash, Read, Write
- Focus: write a working slash command; test with a real pass and a deliberate failure
- The slash command file goes in `.claude/commands/` at the repo root or in the exercise directory.
- Use `preflight-template.md` as the starting structure.
- Frontmatter must include a `description` field — this is what Claude reads to know when to suggest the command.
- Each check must be a real Bash command with a clear pass/fail condition.
- Print a single status table at the end, not one per check.
