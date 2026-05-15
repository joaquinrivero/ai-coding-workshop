# CLAUDE.md — 04-tooling advanced

- Exercise: 04-tooling advanced — MCP server configuration
- Allowed tools: Bash, Read, Write, MCP tools (if configured)
- Focus: configure MCP; verify it loads; use it to gather context unavailable from files alone
- MCP configuration goes in `~/.claude/settings.json` (user-level) or `.claude/settings.json` (project-level).
- After editing settings.json, restart Claude Code so the new server is loaded.
- Verify with `/mcp` before writing the exercise prompt.
- Do not point a filesystem MCP at sensitive directories (SSH keys, credential stores, private repos).
