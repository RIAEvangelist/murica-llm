#!/usr/bin/env bash
set -euo pipefail

LOCAL_MODEL="${LOCAL_MODEL:-murica-llm}"
REMOTE_MODEL="${REMOTE_MODEL:-}"
MODELFILE="${MODELFILE:-Modelfile}"
PULL_BASE="${PULL_BASE:-0}"
BASE_MODEL="${BASE_MODEL:-}"

if [[ "$PULL_BASE" == "1" ]]; then
  if [[ -z "$BASE_MODEL" ]]; then
    echo "Set BASE_MODEL before using PULL_BASE=1." >&2
    exit 1
  fi
  ollama pull "$BASE_MODEL"
fi

echo "Creating $LOCAL_MODEL from $MODELFILE."
echo "Make sure private or local base models referenced by $MODELFILE are already available to Ollama."
ollama create "$LOCAL_MODEL" -f "$MODELFILE"

echo "Smoke test:"
ollama run "$LOCAL_MODEL" "Introduce yourself in one paragraph."

echo
echo "Sign in to Ollama if prompted."
ollama signin || true

# Some Ollama installs/library workflows support push; CLI support can vary by version/account.
if ollama help 2>/dev/null | grep -E '^  push| push ' >/dev/null 2>&1; then
  if [[ -z "$REMOTE_MODEL" ]]; then
    cat <<EOF
Your Ollama CLI lists a push command.

Set REMOTE_MODEL to your Ollama namespace before publishing, for example:
  REMOTE_MODEL=riaevangelist/murica-llm ./scripts/publish_ollama.sh
EOF
    exit 0
  fi

  echo "Pushing $LOCAL_MODEL as $REMOTE_MODEL"
  ollama cp "$LOCAL_MODEL" "$REMOTE_MODEL" || true
  ollama push "$REMOTE_MODEL"
else
  cat <<EOF
Your Ollama CLI help did not list a push command.

The local model is built as: $LOCAL_MODEL
Use the files in ./ollama/ as copy/paste assets for the Ollama model page:
- ollama/README.ollama.md
- ollama/model_card.md
- assets/murica_llm_mascot.png
- assets/murica_llm_mascot_512.jpg
EOF
fi
