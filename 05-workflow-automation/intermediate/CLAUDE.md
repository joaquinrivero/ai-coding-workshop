# CLAUDE.md — 05-workflow-automation intermediate

- Exercise: 05-workflow-automation intermediate — scoped automation
- Allowed tools: Bash (read-only), Read, Write
- Focus: run-scoped.sh starts Claude from this directory; this CLAUDE.md is the automation's scoped context
- run-scoped.sh goes in this directory; it must cd to this directory before calling claude so this CLAUDE.md loads
- Automation constraints: no file writes outside this directory, no network calls, output to stdout only
- Save run outputs to run-1.txt, run-2.txt, run-3.txt in this directory for comparison
- README.md step 3 asks you to add your own task-specific constraints to this CLAUDE.md — edit it
