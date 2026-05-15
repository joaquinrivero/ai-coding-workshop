# CLAUDE.md — 03-context

- Module: 03-context
- Purpose: scoping context with CLAUDE.md, /context, and permission levels
- Available tools: Bash (read-only), Read, Write
- Key concepts:
  - CLAUDE.md is loaded automatically when Claude starts in that directory
  - /context shows what is currently in the context window
  - A CLAUDE.md hierarchy: root (repo-wide) + per-package (scoped to that package)
  - What belongs in CLAUDE.md: project purpose, conventions, allowed tools, what not to touch
  - What does not belong: tutorials, motivation, vague "do your best" instructions
- Do not modify files outside 03-context/ during these exercises.
- Each exercise has its own scoped CLAUDE.md — read it before starting.
