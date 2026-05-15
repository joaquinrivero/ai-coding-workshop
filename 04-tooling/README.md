# 04 — Tooling

Claude's default knowledge comes from training data and file contents. Tools extend this. The Bash tool lets Claude run commands, observe their output, and act on results — a read→act→verify loop. Slash commands (skills) are reusable, parameterized instructions saved to `.claude/commands/`. MCP servers give Claude access to APIs, databases, and services it couldn't reach by reading files alone.

| Exercise | Time | What you build |
|---|---|---|
| Beginner | 15 min | Run a Bash command from inside a Claude session; observe the permission boundary |
| Intermediate | 30 min | Write a slash command that runs a multi-step preflight check |
| Advanced | 50 min | Configure an MCP server; write an exercise that uses it |
