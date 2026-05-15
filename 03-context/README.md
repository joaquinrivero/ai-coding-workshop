# 03 — Context

Context is what the agent knows before it starts. Without a CLAUDE.md, Claude infers context from file contents and directory names — it guesses. With a well-scoped CLAUDE.md, it knows exactly what the project is, what conventions to follow, and what it is allowed to do. This module teaches how to scope context precisely.

| Exercise | Time | What you build |
|---|---|---|
| Beginner | 15 min | Ask Claude to describe a repo with no CLAUDE.md, then add one and compare the two answers |
| Intermediate | 30 min | Audit the active context window with `/context`; identify noise; trim it; observe whether output changes |
| Advanced | 50 min | Design a CLAUDE.md hierarchy for a real mono-repo; test it against 3 cross-package tasks |
