---
description: Run the MCP exercise. Checks whether an MCP server is configured, then uses it to gather external context.
---

Run `/mcp` to check which MCP servers are currently configured.

If no MCP servers are configured: read `04-tooling/advanced/mcp-setup.md` and display the setup instructions. Ask the participant to configure one before continuing.

If MCP servers are configured: list them and ask which one to use for the exercise.

Based on the configured server, run one of these exercises:

**If filesystem MCP is configured:**

Use the filesystem MCP tool to read a directory outside the workshop repo. Ask the participant: "What directory would you like to read? (e.g., `~/Downloads`, `/tmp`, or a project directory outside this repo)"

Read the top-level listing of that directory. Summarize what's there and identify any files that look relevant to the current project.

**If fetch MCP is configured:**

Fetch `https://docs.anthropic.com/en/docs/claude-code/overview` and extract: the page title, the first 5 section headings, and any commands or flags mentioned.

After completing the exercise, ask: "What did the MCP tool provide that you could not have gotten by reading files in this repo?"
