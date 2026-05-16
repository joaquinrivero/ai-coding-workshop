# CLAUDE.md — 04-tooling concept

- Exercise: 04-tooling concept — Bash tool observation
- Allowed tools: Bash (read-only commands only: `git log`, `node --version`, `ls`, `cat`)
- Focus: observe permission prompts and the read→act→verify loop
- Do not run commands that modify the filesystem (no `rm`, `mv`, `mkdir`, `touch`, `>`, `>>`).
- Do not run commands that make network requests (no `curl`, `wget`, `npm install`, `git fetch`, `git pull`).
- If a step would require a write or network command, stop and explain why instead of running it.
