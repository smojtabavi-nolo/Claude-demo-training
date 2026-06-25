#!/usr/bin/env bash
# tools/check-diff.sh — a plugin can SHIP CLI tools. Claude runs binaries like this
# via Bash under your permission rules; there is no separate "tool definition" to write.
set -euo pipefail
git diff --cached --stat
git diff --cached | grep -nE 'TODO|FIXME|console\.log' || true