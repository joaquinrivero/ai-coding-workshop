# Advanced — MCP Server

**Objective:** Configure one MCP server (filesystem or fetch). Write an exercise where the agent uses it to gather context it could not read from files alone.

**Concept:** MCP (Model Context Protocol) servers give Claude access to external systems — APIs, databases, browsers, file systems outside the repo root. Where the Bash tool lets Claude run commands, MCP lets Claude call structured APIs with typed inputs and outputs. The key difference from file reading: MCP can reach live data, remote systems, and services that don't have a local file representation.

**Time:** 50 minutes

## Steps

1. Read `mcp-setup.md` to configure the MCP server you'll use.

2. Choose one:
   - **Option A — Filesystem MCP:** gives Claude read/write access to a directory outside the repo. Useful for reading config files, logs, or output directories.
   - **Option B — Fetch MCP:** gives Claude the ability to fetch URLs. Useful for reading API documentation, checking remote resources, or pulling external data.

3. Add the MCP server to your Claude Code settings following the instructions in `mcp-setup.md`. Restart Claude Code to load the new configuration.

4. Verify the MCP server is loaded:
```
/mcp
```
The server you configured should appear in the list.

5. Write an exercise that uses the MCP tool to gather context. Options:
   - Filesystem: read a log file outside the repo and summarize errors from the last hour
   - Fetch: fetch the Claude Code documentation index page and list available commands
   - Fetch: fetch a public API (e.g., GitHub API, JSONPlaceholder) and compare the response structure to a local type definition

6. Run your exercise. Observe: what did MCP provide that file reading alone could not?

## Expected output

With filesystem MCP: Claude reads `/var/log/nginx/access.log` (or any external log) and summarizes it without you having to copy the file into the repo.

With fetch MCP: Claude fetches a URL and incorporates the response into its analysis without you having to download the file manually.

The key observable: Claude calls an MCP tool (not a Bash tool) to gather the information. The tool call shows in the session as `[mcp tool call]` rather than `[bash]`.

## Verification checklist

1. Configured at least one MCP server (filesystem or fetch) in Claude Code settings.
2. Verified the server appears in `/mcp` output.
3. Wrote an exercise prompt that requires the MCP tool (not just file reading).
4. Claude successfully called the MCP tool and returned data.
5. Can state what the MCP tool provided that Bash or file reading could not.
6. Can state one security consideration for MCP servers (what could go wrong if misconfigured).
