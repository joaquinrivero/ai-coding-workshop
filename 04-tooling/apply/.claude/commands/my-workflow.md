[FILL IN — replace this entire file with your structured prompt from 02-prompting/apply/workflow-prompt.md]

You are a [FILL IN — specific expert role].

Context: [FILL IN — relevant background for your workflow task. Keep it under 5 sentences.]

Task: Using the input below, [FILL IN — verb-first instruction. Be specific enough that two engineers would write the same thing].

[Optional — add tool instructions here if your workflow needs live data:]
[Use the Bash tool to run: git diff HEAD~1]
[Use the Bash tool to run: git log --since=yesterday --oneline]
[Use the Read tool to read <path/to/relevant/file>]

Output format: [FILL IN — exact structure. Bullet list? Numbered? Table? Specify exactly.]

Constraints:
- [FILL IN — what Claude must NOT do]
- [FILL IN — another constraint]

Input: $ARGUMENTS
