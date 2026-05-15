# Beginner — Bash Tool

**Objective:** Run a shell command from inside a Claude session. Observe the read→act→verify loop and identify the permission boundary.

**Concept:** The Bash tool lets Claude execute shell commands and read their output. Every Bash tool call goes through a permission prompt — you approve or deny it. This is the permission boundary: Claude proposes the action, you control whether it runs. After each command, Claude reads the output and can act on it — this is the read→act→verify loop.

**Time:** 15 minutes

## Steps

1. Open a Claude session from the repo root. Ask:
```
Run `git log --oneline -5` and summarize the last 5 commits.
```

2. Observe: Claude should propose a Bash tool call. Approve it. Record:
   - The command Claude proposed (did it match what you asked?)
   - The permission prompt format
   - How Claude used the output

3. Ask a second question that requires reading AND acting:
```
Check which Node.js version is installed and whether it meets the workshop requirement (18+).
```

4. Observe the read→act→verify pattern: Claude reads the version, compares to the requirement, and reports the result.

5. Deny a Bash tool call: ask Claude to list the contents of `/etc/` and deny the permission when prompted. Observe how Claude responds to a denied tool call.

## Expected output

Step 2: Claude calls `git log --oneline -5`, receives 5 commit hashes and messages, and summarizes them in plain language.

Step 3: Claude calls `node --version`, reads the output (e.g., "v20.11.0"), and reports whether 20 >= 18.

Step 5: When denied, Claude should acknowledge it cannot complete the task without that tool call and either explain why it needs it or suggest an alternative.

## Verification checklist

1. Observed at least one Bash tool call proposed by Claude and approved it.
2. Saw the permission prompt before the command ran.
3. Observed Claude using the command output to formulate its response.
4. Denied at least one Bash tool call and observed how Claude handled the denial.
5. Can describe the read→act→verify loop in one sentence using the git log example.
