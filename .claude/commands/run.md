Execute the current exercise. Use bash tools to detect context, run the starter, and guide reflection.

## Step 1: Detect exercise
Run `pwd` to get the current directory. Identify:
- Which module (01-model, 02-prompting, 03-context, 04-tooling, 05-workflow)
- Which level (concept, apply, extend)

If the user is not inside an exercise directory, tell them to navigate into one first and stop.

## Step 2: Read the README
Run `cat README.md` in the current directory. Summarize the exercise goal in 1-2 sentences so the user knows what they're about to do.

## Step 3: Run the appropriate starter

**If a .sh file exists** (e.g., observe.sh, explore.sh, automate.sh, run.sh):
- Make it executable: `chmod +x <file>.sh`
- Run it: `bash <file>.sh`
- Capture and display the output

**If only .md files exist** (e.g., router.md, rewrite.md, techniques.md):
- Display the file: `cat <file>.md`
- Tell the user: "This is a fill-in-the-blank exercise. Open the file in your editor, complete the sections marked [FILL IN], then come back and describe what you built."

**If a Python file exists** (e.g., buggy.py):
- Run it: `python3 <file>.py`
- Show the output (including any errors — errors are intentional in some exercises)

**If nothing runnable is found**:
- List the files with `ls -la`
- Tell the user which file to open and what to do with it

## Step 4: Prompt reflection
After showing the output, ask the user one reflection question based on the module:

- **01-model**: "Which model's response surprised you most, and why?"
- **02-prompting**: "What's the biggest difference between the vague and structured prompt outputs?"
- **03-context**: "How did adding CLAUDE.md change the quality of Claude's answer?"
- **04-tooling**: "What did Claude do with the bash tool that you wouldn't have expected?"
- **05-workflow**: "Where would you plug this automation into a real Adobe workflow?"

## Step 5: Suggest next step
After reflection, suggest:
- If exercise looks complete: `git add -A && git commit -m "<module>/<level>: <what you did>"`
- If there's a next level: "When ready, move to the next level: `cd ../apply` or `cd ../extend`"
