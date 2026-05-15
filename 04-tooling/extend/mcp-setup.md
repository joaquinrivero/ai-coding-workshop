# MCP Server Setup

Configure one of the following MCP servers for the tooling exercise.

## Option A — Filesystem MCP

Gives Claude read/write access to a specified directory.

Add to `~/.claude/settings.json` (user-level, applies to all projects):

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/YOUR_USERNAME"
      ]
    }
  }
}
```

Replace `/Users/YOUR_USERNAME` with the directory you want to expose. Restart Claude Code after saving.

Verify:
```
/mcp
```
"filesystem" should appear in the list.

## Option B — Fetch MCP

Gives Claude the ability to fetch URLs.

Add to `~/.claude/settings.json`:

```json
{
  "mcpServers": {
    "fetch": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-fetch"
      ]
    }
  }
}
```

Restart Claude Code after saving.

Verify:
```
/mcp
```
"fetch" should appear in the list.

## Security note

MCP servers run as local processes with the permissions of your user account. The filesystem server can read and write any file in the configured directory. Only configure it for directories you intend to expose. Do not point the filesystem server at sensitive directories (SSH keys, credential stores, private repos).

## Troubleshooting

| Symptom | Cause | Fix |
|---|---|---|
| `/mcp` shows no servers | settings.json not saved or not reloaded | Restart Claude Code after editing settings |
| `npx: command not found` | Node.js not installed or not in PATH | Install Node.js from nodejs.org |
| MCP server crashes on start | Wrong path in args | Check the directory path exists: `ls /path/you/specified` |
| MCP tool call returns permission error | Directory not accessible | Check the path permissions: `ls -la /path/you/specified` |
