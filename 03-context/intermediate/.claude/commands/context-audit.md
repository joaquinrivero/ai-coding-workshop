---
description: Guide the context window audit. Asks for a target project and question, then helps identify and trim noise.
---

Ask: "What project are you auditing, and what is your focused question? Give me the question you want to ask Claude."

Wait for the response.

Then ask: "Have you already run /context and seen what is loaded, or should we walk through it now?"

If they have not run /context yet:
Print:
```
── Run /context now ───────────────────────────────────────────
In this session (or a session where you have done some work already):
  /context

Read the output. Look for:
- Files that are not relevant to your question
- Conversation turns about different topics
- Long CLAUDE.md sections with unrelated rules

Return here and tell me what noise you found.
──────────────────────────────────────────────────────────────
```

If they have run /context and identified noise:
Help them plan the trimmed session:
- What is the minimal set of files needed to answer the question?
- What context should the session start with (just CLAUDE.md? one file? nothing)?

Print:
```
── Trimmed session plan ───────────────────────────────────────
Minimal context:
  [list the files they should load]

Start a new session: /clear or open a new terminal
Ask only: [their question]

Compare the response to the noisy session.
──────────────────────────────────────────────────────────────
```
