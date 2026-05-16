# 00 — Installation

Complete these steps before the first session. Estimated time: 15 minutes.

## Prerequisites

- macOS or Linux
- Node.js 18 or later: `node --version` should print `v18.x.x` or higher
- git: `git --version` should print a version
- An Anthropic API key (from console.anthropic.com) or a Claude Code subscription

## 1. Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

## 2. Verify the installation

```bash
claude --version
```

Expected output format: `1.x.x` (exact version varies; any 1.x or later is fine).

## 3. Clone the workshop repo

```bash
git clone <repo-url>
cd ai-coding-workshop
```

## 4. Set your API key

Copy the sample environment file:

```bash
cp .env.sample .env
```

Open `.env` and set your key:

```
ANTHROPIC_API_KEY=sk-ant-...
```

Then load it into your shell:

```bash
export ANTHROPIC_API_KEY=$(grep ANTHROPIC_API_KEY .env | cut -d= -f2)
```

Or add the export to your `~/.zshrc` / `~/.bashrc` so it persists across sessions.

## 5. Run the preflight check

Open a Claude session from the repo root:

```bash
claude
```

Inside the session, run:

```
/setup
```

All checks should show ✅. If any show ❌, see the troubleshooting table below.

## Troubleshooting

| Symptom | Likely cause | Fix |
|---|---|---|
| `command not found: claude` | Claude Code not installed or not in PATH | Re-run `npm install -g @anthropic-ai/claude-code`; confirm with `which claude` |
| `claude --version` prints nothing | Installation incomplete | Run `npm install -g @anthropic-ai/claude-code` again |
| `ANTHROPIC_API_KEY` shows ❌ in `/setup` | Key not exported in current shell | Run `export ANTHROPIC_API_KEY=<your-key>` in the same terminal where you run `claude` |
| Git identity shows ❌ | `user.name` or `user.email` not set | `git config --global user.name "Name"` and `git config --global user.email "email"` |
| `/setup` command not found | Claude not started from repo root | `cd ai-coding-workshop && claude` |

## Verification checklist

1. `claude --version` prints a version string.
2. `ANTHROPIC_API_KEY` is set and non-empty in the current shell.
3. `git config user.name` and `git config user.email` both return values.
4. `/setup` runs inside a Claude session and all checks show ✅.
