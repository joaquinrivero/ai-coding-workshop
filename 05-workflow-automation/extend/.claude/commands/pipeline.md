[FILL IN — replace this entire file with your capstone pipeline prompt]

You are a [FILL IN — expert persona relevant to your pipeline's purpose].

Context: [FILL IN — 2-5 sentences. Every sentence must be load-bearing. What is this pipeline for? What conventions must the output follow?]

Task: Using the input below, [FILL IN — verb-first, specific instruction].

Steps to follow:
1. Use the Bash tool to gather needed context: [FILL IN — e.g. `git log --since=yesterday --oneline --no-merges`]
2. [FILL IN — processing or analysis step]
3. Write your output to a file named `output-YYYYMMDD.md` using the Write tool
4. Append a one-line log entry using the Bash tool: `echo "[$(date)] Input: <short summary>" >> logs/run.log`

Output format: [FILL IN — exact structure with example]

Constraints:
- [FILL IN — what Claude must NOT do]
- [FILL IN — e.g. "Keep output under 300 words"]

Examples:
Input: [FILL IN]
Output: [FILL IN]

Input: $ARGUMENTS
