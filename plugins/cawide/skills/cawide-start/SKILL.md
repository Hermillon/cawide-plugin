---
name: cawide-start
description: Hand off the current agent session to Cawide mobile and print a pairing QR.
disable-model-invocation: true
allowed-tools: Bash
---

# Start Cawide

Run the bundled `scripts/cawide-start.sh` relative to this `SKILL.md`.

The script:

- Starts the current workspace daemon in detached mode with the current agent resume command when
  supported, or starts then resumes the session for compatibility with older Cawide versions.
- Creates a fresh pairing QR and hands off the current session when the daemon is already running.
- Always prints the complete pairing QR and URL on success.

Run it from the user's current workspace:

```bash
sh <skill-directory>/scripts/cawide-start.sh
```

Return the script output to the user without omitting the QR code or pairing URL.
