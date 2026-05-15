# Intermediate — Prompting Techniques

**Objective:** Apply chain-of-thought, few-shot, and role-prompting to the same task. Document when each technique changes output quality.

**Concept:** Three techniques work on different failure modes. Role-prompting helps when the default response assumes the wrong audience or expertise level. Chain-of-thought helps when the model jumps to conclusions instead of reasoning through a problem. Few-shot helps when the default output format does not match what you need.

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

Chain-of-thought: surfaces the reasoning before the conclusion — more useful for ambiguous tickets where the classification is not obvious.

Few-shot: constrains the output format — if your examples show a specific table format, the output matches it.

## Verification checklist

1. Ran the baseline prompt without any technique.
2. Applied each technique (role, chain-of-thought, few-shot) separately and ran each.
3. Filled in the observation table with at least one entry per technique.
4. Can describe a task where chain-of-thought would not improve output quality (simple, deterministic tasks).
5. Can describe a task where few-shot is necessary (when output format matters more than reasoning).
