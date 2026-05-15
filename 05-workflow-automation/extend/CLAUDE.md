# CLAUDE.md — 05-workflow-automation advanced

- Exercise: 05-workflow-automation advanced — programmable pipeline
- Allowed tools: Bash, Read, Write
- Focus: adapt prompt.md for a real task; write a wrapper; add a trigger
- Files go in this directory (05-workflow-automation/advanced/)
- prompt.md uses {{PLACEHOLDERS}} for runtime values — do not hardcode them
- Wrapper script choices: pipeline.sh (bash), pipeline.py (uv/Python), pipeline.ts (Bun)
- Trigger choices: cron job, git hook, Makefile target
- Do not install additional runtimes — use what is already on the machine
