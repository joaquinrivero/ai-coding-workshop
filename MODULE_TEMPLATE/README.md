# Module template

Scaffold a new workshop module.

## Usage

1. Copy this directory: `cp -r MODULE_TEMPLATE/ NN-<topic>/`
2. Fill every <PLACEHOLDER> with real content
3. Run `/check` to validate the structure
4. Add a row to the root README.md module table

Each subdirectory contains placeholders. Replace each placeholder with module content.

## Meta-agentic generation

Ask Claude to generate a module:

```
Read MODULE_TEMPLATE/CLAUDE.md and generate 06-agents/ covering
multi-agent orchestration patterns. Follow the rules exactly.
```

Claude reads the contract, fills placeholders, and writes a complete module directory.
