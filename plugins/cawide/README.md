# cawide plugin

Agent plugin for starting and managing the [Cawide](https://github.com/Hermillon/cawide) Host daemon.
Works with Claude Code, Codex, OpenCode, and any tool supporting the
[Agent Skills](https://agentskills.io) standard.

## Install

### Claude Code

```bash
# Local development
claude --plugin-dir ./plugins/cawide

# Or install from marketplace
# (inside a Claude Code session)
/plugin marketplace add Hermillon/cawide-plugin
/plugin install cawide@cawide
/reload-plugins
```

### Codex

```bash
codex plugin marketplace add Hermillon/cawide-plugin
codex plugin add cawide@cawide
```

Start a new Codex thread, then ask Codex to use `@cawide:cawide-start`.

For local development, add this repository as the marketplace:

```bash
codex plugin marketplace add ../cawide-plugin
codex plugin add cawide@cawide
```

### OpenCode

Copy or symlink the plugin directory so the tool discovers `AGENTS.md` and
`skills/` at the project root or in a recognized plugins path:

```bash
opencode --add-dir ./plugins/cawide
```

## Usage

Plugin skills can be run directly in Claude Code:

| Command | What it does |
|---------|-------------|
| `/cawide-start` | Hand off the current agent session to mobile and print a pairing QR |

## Skills

All skills live in `skills/` as `SKILL.md` files following the Agent Skills standard:

```
plugins/cawide/
├── .claude-plugin/
│   └── plugin.json             # Claude Code manifest
├── .codex-plugin/
│   └── plugin.json             # Codex manifest
├── AGENTS.md                   # Codex/OpenCode discovery
├── skills/
│   └── cawide-start/
│       ├── SKILL.md            # Skill instructions
│       └── scripts/
│           └── cawide-start.sh # Pair + handoff workflow
└── README.md
```
