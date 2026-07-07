#!/usr/bin/env bash
set -euo pipefail

OWNER="${GITHUB_OWNER:-RIAEvangelist}"
REPO="${GITHUB_REPO:-murica-llm}"
DESCRIPTION="${DESCRIPTION:-'MURICA LLM: the least subtle Ollama model ever built — satirical mascot persona based on gemma4:26b.}"

if command -v gh >/dev/null 2>&1; then
  gh repo create "$OWNER/$REPO" \
    --public \
    --description "$DESCRIPTION" \
    --source=. \
    --remote=origin \
    --push
else
  cat <<EOF
GitHub CLI (gh) is not installed.

Manual path:
1. Create a public empty repo on GitHub named: $OWNER/$REPO
2. Then run:

   git init
   git add .
   git commit -m "Initial 'MURICA LLM Ollama model"
   git branch -M main
   git remote add origin git@github.com:$OWNER/$REPO.git
   git push -u origin main

Or install GitHub CLI, authenticate with gh auth login, then run this script again.
EOF
fi
