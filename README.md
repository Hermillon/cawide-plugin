# cawide-plugin

Agent plugin for [Cawide](https://github.com/Hermillon/cawide) — control your dev environment from mobile.

See [cawide.dev](https://cawide.dev) for the app and full documentation.

## Install

```bash
# Install Cawide CLI
curl -fsSL https://raw.githubusercontent.com/Hermillon/cawide/main/scripts/install.sh | sh

# Set up all detected agents
cawide setup
```

Or set up one agent:

```bash
cawide setup claude
cawide setup codex
cawide setup opencode
```

Start a new agent session, then run `cawide-start`.

## Skills

| Skill | Description |
|-------|-------------|
| `cawide-start` | Hand off the current agent session to mobile and print a pairing QR |

## License

MIT
