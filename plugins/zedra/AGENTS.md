# Zedra Plugin

This plugin provides skills to manage the Zedra Host daemon — a desktop companion
that lets you control your development environment from the Zedra mobile app.

## Available Skills

| Skill | Description |
|-------|-------------|
| `zedra:zedra-start` | Hand off the current agent session to mobile and print a pairing QR |

## Prerequisites

- **zedra CLI**: Installed automatically by the `start` skill, or manually via:
  ```bash
  curl -fsSL https://raw.githubusercontent.com/tanlethanh/zedra/main/scripts/install.sh | sh
  ```

## Claude Code Installation

```
/plugin marketplace add tanlethanh/zedra
/plugin install zedra@zedra
```

## Codex Installation

```bash
codex plugin marketplace add tanlethanh/zedra-plugin
codex plugin add zedra@zedra
```

Start a new Codex thread, then use `@zedra:zedra-start`.

- **Zedra mobile app**: Install on your Android/iOS device to scan the pairing QR code

## How It Works

1. Run `/zedra-start` to hand off the current agent session to mobile
2. If needed, the skill starts the workspace daemon with the handoff command
3. The skill always prints an ASCII QR code and pairing URL
4. Scan the QR with the Zedra mobile app
