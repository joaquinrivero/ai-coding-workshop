# Beginner — Prompt Rewrite

**Objective:** Take a one-liner task description, identify what it is missing, rewrite it as a structured prompt, and compare the outputs.

**Concept:** A minimal prompt omits role, context, output format, and constraints. Claude fills in the gaps by guessing — often wrong. A structured prompt specifies all four. The output difference is observable and often large.

**Time:** 15 minutes

## Steps

1. Read `weak-prompt.md`. This is a one-liner prompt as a participant might first write it.

2. Run `/prompt-rewrite` — this runs the weak prompt and prints the output.

3. Identify what is missing from the weak prompt. Use this checklist:
   - Role: does the prompt tell Claude who it is?
   - Context: does it explain why the task matters or what environment it runs in?
   - Output format: does it specify length, structure, or format?
   - Constraints: does it say what to avoid?

4. Write a structured version of the prompt. Add the missing elements. Save it as `strong-prompt.md` in this directory.

5. Run `/prompt-rewrite` again — it detects `strong-prompt.md` and runs both versions, printing both outputs for comparison.

## Expected output

Weak prompt output: generic, likely includes hedging or vague advice without specifics.

Strong prompt output: specific, role-appropriate, in the requested format, with concrete recommendations.

The difference should be visible in length, specificity, and how directly the output addresses the actual task.

## Verification checklist

1. Read `weak-prompt.md` and identified at least 2 missing components.
2. Created `strong-prompt.md` with role, context, output format, and at least one constraint added.
3. Ran both prompts and read both outputs.
4. Can state in one sentence the most significant difference between the two outputs.
5. Can name the four structural components of a well-formed prompt.
