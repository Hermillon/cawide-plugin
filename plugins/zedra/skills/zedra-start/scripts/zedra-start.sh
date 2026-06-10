#!/bin/sh
set -eu

workdir="${1:-.}"

if ! command -v zedra >/dev/null 2>&1; then
    echo "Zedra CLI is not installed." >&2
    echo "Install it with: curl -fsSL https://zedra.dev/install.sh | sh" >&2
    exit 1
fi

if [ -n "${CLAUDE_SESSION_ID:-}" ]; then
    agent_kind="claude"
    session_id="${CLAUDE_SESSION_ID}"
    resume_command="claude --resume ${CLAUDE_SESSION_ID}"
elif [ -n "${CODEX_THREAD_ID:-}" ]; then
    agent_kind="codex"
    session_id="${CODEX_THREAD_ID}"
    resume_command="codex resume ${CODEX_THREAD_ID}"
else
    echo "The current agent did not expose a supported session ID." >&2
    exit 1
fi

if zedra status --workdir "${workdir}" >/dev/null 2>&1; then
    zedra qr --workdir "${workdir}"
    zedra agent resume --workdir "${workdir}" "${agent_kind}" "${session_id}"
elif zedra start --help 2>&1 | grep -q -- "--launch-cmd"; then
    zedra start --detach --workdir "${workdir}" --launch-cmd "${resume_command}"
else
    zedra start --detach --workdir "${workdir}"
    zedra agent resume --workdir "${workdir}" "${agent_kind}" "${session_id}"
fi
