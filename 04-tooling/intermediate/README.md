# Intermediate — Writing a Slash Command

**Objective:** Write a `.claude/commands/` slash command that runs a multi-step preflight check. Test it.

**Concept:** Slash commands (also called skills) are markdown files in `.claude/commands/` that Claude reads when you invoke them with `/command-name`. The frontmatter `description` field explains when to use the command. The body is imperative instructions — Claude follows them as if you typed them. Slash commands are the unit of reusable, shareable workflows in Claude Code.

**Time:** 30 minutes

## Steps

1. Read `preflight-template.md` in this directory. This shows the slash command format.

2. Design a preflight check for your own project. The check should:
   - Verify at least 3 preconditions (e.g., dependencies installed, environment variables set, repo is clean)
   - Run each check as a Bash command
   - Print a pass/fail table at the end

3. Create your slash command at `.claude/commands/my-preflight.md`. Use the template as a starting point.

4. Test it from a Claude session:
```
/my-preflight
```

5. Introduce a failure: change one precondition to make it fail (e.g., temporarily unset an env variable). Run `/my-preflight` again and verify it reports the failure correctly.

6. Fix the precondition. Run `/my-preflight` a final time and verify all checks pass.

## Expected output

The slash command produces a table like:
```
── My project: pre-flight check ─────────────────

  Node version     ✅ v20.11.0 (18+ required)
  GITHUB_TOKEN     ✅ set
  Repo state       ✅ clean
  .env file        ✅ present
  Dependencies     ✅ node_modules present

─────────────────────────────────────────────────
```

## Verification checklist

1. Created a slash command file at `.claude/commands/my-preflight.md` with frontmatter and at least 3 checks.
2. Slash command has a `description` field in the frontmatter.
3. Each check runs a Bash command and prints ✅ or ❌.
4. Ran `/my-preflight` successfully with all checks passing.
5. Introduced a deliberate failure and confirmed the slash command reported it as ❌.
6. Can state the difference between a slash command and a CLAUDE.md in one sentence.
