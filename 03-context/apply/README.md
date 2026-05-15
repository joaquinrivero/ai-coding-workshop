# 03-context / Apply — Scope context for your workflow

**Objective:** Use `/context` to audit what is in the active context window. Identify noise. Trim it. Observe whether output quality changes.

**Concept:** The context window contains everything Claude can see: CLAUDE.md files, files you have opened, conversation history, tool outputs. More context is not always better — irrelevant content dilutes the signal. Auditing and trimming the context window improves output quality on focused tasks.

**Time:** 30 minutes

## Steps

1. Open a Claude session in a project of your choice (your own repo, or the workshop repo).

2. Ask Claude a focused question about the project — something that requires reading 1–3 files.

3. Run:
```
/context
```

Read the output. The context window shows what Claude currently has loaded.

4. Identify noise: content that is not relevant to the question you asked. Common sources:
   - Files opened during previous questions in the same session
   - Long CLAUDE.md files with sections irrelevant to this task
   - Tool outputs from earlier commands that are no longer relevant

5. Start a fresh session (`/clear` or open a new terminal). This time, use explicit file reads to load only the files needed for your question. Avoid asking any unrelated questions first.

6. Ask the same focused question.

7. Compare the two responses. Did removing noise change the specificity or accuracy of the answer?

## Expected output

After `/context`: a summary of what is loaded — file names, approximate token counts, conversation turns.

After trimming: a response that stays on-topic for your question, without references to files or earlier topics that are not relevant.

## Verification checklist

1. Ran `/context` in an active session and read the output.
2. Identified at least one source of noise in the context window.
3. Started a fresh session with a minimal context (only files needed for the question).
4. Asked the same question in both sessions and compared responses.
5. Can describe one concrete technique for keeping the context window focused during a long session.

## Workflow checkpoint

Open `my-workflow.md` at the repo root. Fill in the Context section:

```
### Context (fill in after Module 03 Apply)
CLAUDE.md: `03-context/apply/CLAUDE.md`
Words: [your word count] / 200 max
```

Commit:
```bash
git add 03-context/apply/CLAUDE.md 03-context/apply/notes.md my-workflow.md
git commit -m "03-context/apply: workflow CLAUDE.md written and trimmed"
```

**Next:** Module 04 Apply — wire prompt + context into a `/my-workflow` slash command.
