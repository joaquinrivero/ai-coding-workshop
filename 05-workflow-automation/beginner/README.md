# Beginner — Automate a Weekly Task

**Objective:** Identify one manual task you repeat weekly. Write a prompt and a bash wrapper that automates it. Run it.

**Concept:** The simplest automation is a prompt in a file, called from a script. The script passes inputs (file paths, dates, names) to the prompt as arguments. Claude runs the prompt, the output goes to stdout or a file. No framework needed.

**Time:** 15 minutes

## Steps

1. Run `/automate-task`. It asks you to describe a task you do repeatedly. Examples:
   - "Every Monday I summarize last week's git commits for my team."
   - "Before each PR review I check for console.log statements left in the code."
   - "After each deploy I write a one-paragraph release note from the git log."

2. From your description, the command helps you write two files:
   - `my-prompt.md` — the prompt for Claude (the what and how)
   - `run.sh` — the bash wrapper that calls Claude with the prompt

3. Run `run.sh` once:
```bash
bash run.sh
```

4. Read the output. Is it usable? If the output is too generic, add more context to `my-prompt.md` — specific file paths, output format, length constraints.

5. Run `run.sh` a second time to confirm the output is consistent.

## Expected output

`run.sh` calls `claude --print "$(cat my-prompt.md)"` (with any inputs substituted) and prints the output to the terminal. The output is specific enough to use as-is or with minor editing.

## Verification checklist

1. Identified a real weekly task and described it in one sentence.
2. `my-prompt.md` exists and contains a structured prompt with role, context, task, and output format.
3. `run.sh` exists and is executable.
4. Ran `bash run.sh` and got a usable output.
5. Can describe what you would add to `my-prompt.md` to make the output more specific.
