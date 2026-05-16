# 03-context / Concept — Compare CLAUDE.md output

**Objective:** Ask Claude to describe a project with no CLAUDE.md. Add a CLAUDE.md. Ask again. Compare the two answers.

**Concept:** Without CLAUDE.md, Claude guesses from file names and directory structure. With CLAUDE.md, Claude reads explicit context first. Compare inference against stated facts.

**Time:** 15 minutes

## Steps

1. Find a directory with no CLAUDE.md. Use your own repo or any directory with a few files. Note its path.

2. Open a Claude session in that directory. Ask:
```
What is this project? What does it do, what conventions does it use, and what should I know before working in it?
```

3. Read the response. Record:
   - What did Claude get right?
   - What did it guess or fabricate?
   - What is missing?

4. Write a CLAUDE.md in that directory. Include:
   - What the project is (one sentence)
   - The primary language and key frameworks
   - Naming conventions (file names, function names, variable style)
   - What not to touch without asking
   - Any commands needed to run or test the project

5. Ask the same question again (new session or `/clear` to reset context):
```
What is this project? What does it do, what conventions does it use, and what should I know before working in it?
```

6. Compare the two responses.

## Expected output

Without CLAUDE.md: Claude describes what it infers from file names and structure. It may hedge or include incorrect details.

With CLAUDE.md: Claude states facts from the context file directly, without hedging, and includes the specifics you wrote.

## Verification checklist

1. Asked the question in a directory with no CLAUDE.md and read the response.
2. Identified at least one incorrect or uncertain statement in the first response.
3. Wrote a CLAUDE.md with project description, language/framework, conventions, and constraints.
4. Asked the same question after adding CLAUDE.md (in a fresh context).
5. Can state the most significant difference between the two responses.
