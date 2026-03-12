#!/bin/bash
set -euo pipefail

# Only run in Claude Code on the web
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No dependencies to install for this static HTML project.
# Ensure git remote is available for pull/push operations.
cd "${CLAUDE_PROJECT_DIR:-$(pwd)}"

git fetch origin 2>/dev/null || true

echo "Session start hook completed."
