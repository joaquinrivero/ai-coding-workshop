# 02-prompting / Apply — Write your workflow's prompt

**Objective:** Apply chain-of-thought, few-shot, and role-prompting. Document when each technique changes output quality.

**Concept:** Three techniques address different failure modes. Role-prompting fixes the wrong audience or expertise level. Chain-of-thought helps when the model jumps to conclusions. Few-shot fixes mismatched output format.

**Time:** 30 minutes

## Steps

1. Choose a task. Use this one or substitute your own:
   > "Given a list of user support tickets, identify which ones are bugs vs. feature requests and assign a priority (P1/P2/P3)."

2. Write a baseline prompt (no techniques) and run it:
```
Given a list of user support tickets, identify which ones are bugs vs. feature requests and assign a priority (P1/P2/P3).

Tickets:
- "App crashes when uploading files larger than 10MB"
- "Add dark mode to the dashboard"
- "Login button doesn't work on Safari 16"
- "Would be nice to export data as CSV"
```

3. Apply **role-prompting**: add a role to the prompt. Run it. Note any difference.

4. Apply **chain-of-thought**: add "Think through each ticket step by step before assigning." Run it. Note any difference.

5. Apply **few-shot**: add 2 worked examples before the ticket list. Run it. Note any difference.

6. Fill in the observation table:

| Technique | Did it change the output? | How? (format / accuracy / depth) |
|---|---|---|
| Role-prompting | | |
| Chain-of-thought | | |
| Few-shot | | |

## Expected output

Role-prompting: may change tone or expertise level but often does not change the classification result for a simple task.

Chain-of-thought: shows reasoning before the conclusion. It helps most with ambiguous tickets.

Few-shot: constrains the output format — if your examples show a specific table format, the output matches it.

## Verification checklist

1. Ran the baseline prompt without any technique.
2. Applied each technique (role, chain-of-thought, few-shot) separately and ran each.
3. Filled in the observation table with at least one entry per technique.
4. Can describe a task where chain-of-thought would not improve output quality (simple, deterministic tasks).
5. Can describe a task where few-shot is necessary (when output format matters more than reasoning).

## Workflow checkpoint

Open `my-workflow.md` at the repo root. Fill in the Prompt section:

```
### Prompt (fill in after Module 02 Apply)
Prompt file: `02-prompting/apply/workflow-prompt.md`
Status: tested
```

Commit:
```bash
git add 02-prompting/apply/workflow-prompt.md 02-prompting/apply/notes.md my-workflow.md
git commit -m "02-prompting/apply: workflow prompt written and tested"
```

**Next:** Module 03 Apply — scope the context Claude needs to run this prompt well.
