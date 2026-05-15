# Cross-Package Tasks

These three tasks require Claude to use context from multiple CLAUDE.md files simultaneously. Run each from the relevant directory and observe whether Claude applies the right conventions from both packages.

---

## Task 1: Add a New API Endpoint + Wire It to the Frontend

**Description:**
Add a `GET /users/:id/activity` endpoint to the API package that returns the last 10 actions a user took. Then update the web package to display this activity in a user profile page.

**Expected behavior from Claude:**
- Apply API package conventions for route structure, Zod validation, and error handling
- Apply web package conventions for React Query data fetching and Spectrum components
- Suggest a Conventional Commit message that spans both packages
- Not mix up API patterns (e.g., don't use React Query in the API)

**Run from:** repo root or navigate between packages as needed

**Test question to ask Claude:**
```
I need to add a user activity feed. Add GET /users/:id/activity to the API (returns last 10 actions), then show it in the web on the user profile page. Walk me through the changes needed in both packages.
```

---

## Task 2: Add Authentication to a Currently-Public Route

**Description:**
The `GET /users` list endpoint is currently public. Add JWT auth middleware so only authenticated users can list all users. Update the frontend to pass the auth token.

**Expected behavior from Claude:**
- Use the API package's auth patterns (JWT middleware from `src/middleware/`)
- Know how tokens are stored and attached in the web package
- Not suggest a different auth library or approach

**Test question to ask Claude:**
```
The GET /users endpoint needs to be protected. Only logged-in users should be able to list all users. How do I add auth middleware in the API, and what changes are needed in the frontend fetch layer?
```

---

## Task 3: Add a Shared TypeScript Type

**Description:**
Both the API and web packages need a `UserActivity` type. Decide where it should live and how it should be shared. Implement the sharing mechanism.

**Expected behavior from Claude:**
- Identify that a shared type doesn't belong in either package alone
- Propose a solution consistent with the mono-repo structure (e.g., a `packages/shared/` package or root `types/`)
- Apply TypeScript strict mode conventions from root CLAUDE.md

**Test question to ask Claude:**
```
I need a UserActivity TypeScript type that both the API and web packages will use. Where should it live, and how do I make it importable from both packages without duplicating it?
```

---

## Reflection

After running all three tasks, answer in a file called `task-notes.md`:

1. Which task most exposed gaps in the CLAUDE.md files?
2. Where did Claude confidently apply the wrong convention?
3. What one sentence would you add to each CLAUDE.md to prevent the biggest mistake you saw?
