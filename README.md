# zedra-plugin

Agent plugin for [Zedra](https://github.com/tanlethanh/zedra) — control your dev environment from mobile.

See [zedra.dev](https://zedra.dev) for the app and full documentation.

## Install

```bash
# Install Zedra CLI
curl -fsSL zedra.dev/install.sh | sh

# Set up all detected agents
zedra setup
```

Or set up one agent:

```bash
zedra setup claude
zedra setup codex
zedra setup opencode
```

Start a new agent session, then run `zedra-start`.

## Skills

| Skill | Description |
|-------|-------------|
| `zedra-start` | Hand off the current agent session to mobile and print a pairing QR |

## License

MIT
