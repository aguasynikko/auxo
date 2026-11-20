#!/usr/bin/env bash
# PreToolUse hook: blocks destructive git commands run through the Bash tool.
# Exit 2 = block the call and show stderr to Claude.
cmd=$(jq -r '.tool_input.command // empty')

patterns=(
  'git[[:space:]]+push[^|;&]*(--force([^-]|$)|[[:space:]]-f([[:space:]]|$))'
  'git[[:space:]]+reset[^|;&]*--hard'
  'git[[:space:]]+clean[^|;&]*[[:space:]]-[a-zA-Z]*f'
  'git[[:space:]]+branch[^|;&]*[[:space:]]-D'
  'git[[:space:]]+checkout[[:space:]]+(--[[:space:]]+)?\.([[:space:]]|$)'
  'git[[:space:]]+restore[^|;&]*[[:space:]]\.([[:space:]]|$)'
  'git[[:space:]]+push[^|;&]*[[:space:]](origin[[:space:]]+)?(main|master)([[:space:]]|$)'
  '--no-verify'
)

for p in "${patterns[@]}"; do
  if printf '%s' "$cmd" | grep -Eq -- "$p"; then
    echo "Blocked by git guardrail: '$cmd' matches /$p/. This discards work, rewrites history, pushes to main, or skips hooks. Ask the user to run it themselves if it is really needed." >&2
    exit 2
  fi
done
exit 0
