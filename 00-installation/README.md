# 00 — Installation

Complete these steps before the first session. Estimated time: 15 minutes.

## Prerequisites

- macOS or Linux
- Node.js 18+: `brew install node` if not installed. No Homebrew yet?

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- git: `git --version` should print a version
- Claude Code subscription (enterprise — no separate API key needed; `claude auth login` handles auth)

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
git clone https://github.com/joaquinrivero/ai-coding-workshop.git
cd ai-coding-workshop
```

## 4. Sign in to Claude Code

```bash
claude auth login
```

Verify your subscription auth:

```bash
claude auth status
```

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
| Claude auth shows ❌ in `/setup` | Claude Code is not signed in | Run `claude auth login` |
| Git identity shows ❌ | `user.name` or `user.email` not set | `git config --global user.name "Name"` and `git config --global user.email "email"` |
| `/setup` command not found | Claude not started from repo root | `cd ai-coding-workshop && claude` |

## Verification checklist

1. `claude --version` prints a version string.
2. `claude auth status` shows a signed-in subscription account.
3. `git config user.name` and `git config user.email` both return values.
4. `/setup` runs inside a Claude session and all checks show ✅.
