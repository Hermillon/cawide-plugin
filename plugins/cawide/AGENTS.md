# Cawide Plugin

This plugin provides skills to manage the Cawide Host daemon — a desktop companion
that lets you control your development environment from the Cawide mobile app.

## Available Skills

| Skill | Description |
|-------|-------------|
| `cawide:cawide-start` | Hand off the current agent session to mobile and print a pairing QR |

## Prerequisites

- **cawide CLI**: Installed automatically by the `start` skill, or manually via:
  ```bash
  curl -fsSL https://raw.githubusercontent.com/Hermillon/cawide/main/scripts/install.sh | sh
  ```

## Claude Code Installation

```
/plugin marketplace add Hermillon/cawide-plugin
/plugin install cawide@cawide
```

## Codex Installation

```bash
codex plugin marketplace add Hermillon/cawide-plugin
codex plugin add cawide@cawide
```

Start a new Codex thread, then use `@cawide:cawide-start`.

- **Cawide mobile app**: Install on your Android/iOS device to scan the pairing QR code

## How It Works

1. Run `/cawide-start` to hand off the current agent session to mobile
2. If needed, the skill starts the workspace daemon with the handoff command
3. The skill always prints an ASCII QR code and pairing URL
4. Scan the QR with the Cawide mobile app
