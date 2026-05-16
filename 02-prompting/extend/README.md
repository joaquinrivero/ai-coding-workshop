# 02-prompting / Extend — Write a meta-prompt

**Objective:** Write a meta-prompt that turns rough tasks into structured prompts.

**Concept:** A meta-prompt generates prompts. It takes a rough task and returns a structured prompt. Use it to produce consistent prompts at scale.

**Time:** 50 minutes

## Steps

1. Write your meta-prompt in `meta-prompt.md`. It should:
   - Define the role: "You are a prompt engineer."
   - Explain the task: take a rough description and produce a structured prompt
   - Specify the output format (see below)
   - Include constraints: no hedging, no "I will", present tense, target a specific audience

2. The output format for the generated prompt should be:
```
Role: <who Claude should be>
Context: <what background Claude needs>
Task: <the specific instruction>
Output format: <length, structure, format constraints>
Constraints: <what to avoid>
```

3. Test the meta-prompt on three inputs:
   - "Summarize a pull request for a non-technical manager."
   - "Find bugs in this Python function."
   - "Write release notes from a list of git commits."

4. Read each generated prompt. Check whether Claude could use it as-is. If not, edit the meta-prompt.

5. Run one of the generated prompts through Claude to verify it produces a good output.

## Expected output

Each test input produces a structured prompt with all five fields. The generated prompts are specific enough to use directly.

Example for "Summarize a pull request for a non-technical manager.":
```
Role: You are a senior engineering communicator who writes for non-technical stakeholders.
Context: You have been given the title, description, and diff of a pull request from a software engineering team.
Task: Write a 3-sentence summary of what changed, why it matters, and whether there are any risks.
Output format: 3 sentences, plain English, no code blocks, no technical jargon.
Constraints: Do not use terms like "refactor", "merge", "commit", or "branch" without defining them.
```

## Verification checklist

1. `meta-prompt.md` contains a complete meta-prompt with role, task, output format, and constraints.
2. Tested meta-prompt on all three task descriptions.
3. All three generated prompts include all five structured fields.
4. At least one generated prompt was edited based on a gap found in step 4.
5. Ran one generated prompt through Claude and the output was usable without further editing.
