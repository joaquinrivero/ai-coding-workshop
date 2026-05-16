Run a prereq and progress check for the AI Coding Workshop. Use bash tools throughout.

## Step 1: Check Claude CLI
Run `claude --version`. Report the version. Flag if it's missing.

## Step 2: Check Git
Run `git branch --show-current`. Report the current branch.
- If it starts with `workshop/`, the user is set up correctly.
- If it's `main`, remind them to run /setup first.

## Step 3: Detect current module
Run `pwd` to get the current directory. Parse the path:
- If the path contains `01-model`, `02-prompting`, `03-context`, `04-tooling`, or `05-workflow`, identify the current module and level (concept/apply/extend).
- If the user is at the repo root, tell them to `cd` into a module.

## Step 4: Check exercise files
Based on the detected module directory:
- Run `ls -la` in the current directory
- Check whether a README.md exists: if yes, note it
- Check whether any starter files exist (.sh, .md, .py other than README): list them
- Check whether any output or notes files have been created by the user (anything not in the original file list)

## Step 5: Suggest next action
Based on what you found, suggest exactly one next action:
- If README.md hasn't been opened recently: "Read the README: cat README.md"
- If starter files exist and haven't been modified: "Run /run to execute the starter"
- If the exercise looks complete: "Commit your work: git add -A && git commit -m 'module: description'"
- If the user is at root: "Start here: cd 01-model && cat README.md"

## Output format
Print a clean status table:

```
=== Workshop Check ===
Claude CLI:      ✅ claude 1.x.x
Git branch:      ✅ workshop/yourname
Current module:  01-model / concept
Starter files:   ✅ observe.sh found
User notes:      ⚠️  no notes yet
---
Next: Run /run to execute observe.sh and fill in the observation table.
```
