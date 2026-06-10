# zedra plugin

Agent plugin for starting and managing the [Zedra](https://github.com/tanlethanh/zedra) Host daemon.
Works with Claude Code, Codex, OpenCode, and any tool supporting the
[Agent Skills](https://agentskills.io) standard.

## Install

### Claude Code

```bash
# Local development
claude --plugin-dir ./plugins/zedra

# Or install from marketplace
# (inside a Claude Code session)
/plugin marketplace add tanlethanh/zedra
/plugin install zedra@zedra
/reload-plugins
```

### Codex

```bash
codex plugin marketplace add tanlethanh/zedra-plugin
codex plugin add zedra@zedra
```

Start a new Codex thread, then ask Codex to use `@zedra:zedra-start`.

For local development, add this repository as the marketplace:

```bash
codex plugin marketplace add ../zedra-plugin
codex plugin add zedra@zedra
```

### OpenCode

Copy or symlink the plugin directory so the tool discovers `AGENTS.md` and
`skills/` at the project root or in a recognized plugins path:

```bash
opencode --add-dir ./plugins/zedra
```

## Usage

Plugin skills can be run directly in Claude Code:

| Command | What it does |
|---------|-------------|
| `/zedra-start` | Hand off the current agent session to mobile and print a pairing QR |

## Skills

All skills live in `skills/` as `SKILL.md` files following the Agent Skills standard:

```
plugins/zedra/
├── .claude-plugin/
│   └── plugin.json             # Claude Code manifest
├── .codex-plugin/
│   └── plugin.json             # Codex manifest
├── AGENTS.md                   # Codex/OpenCode discovery
├── skills/
│   └── zedra-start/
│       ├── SKILL.md            # Skill instructions
│       └── scripts/
│           └── zedra-start.sh  # Pair + handoff workflow
└── README.md
```
