#!/usr/bin/env bash
set -euo pipefail

LOCAL_MODEL="${LOCAL_MODEL:-murica-llm}"
REMOTE_MODEL="${REMOTE_MODEL:-RIAEvangelist/murica-llm}"
MODELFILE="${MODELFILE:-Modelfile}"

ollama pull gemma4:26b
ollama create "$LOCAL_MODEL" -f "$MODELFILE"

echo "Smoke test:"
ollama run "$LOCAL_MODEL" "Introduce yourself in one paragraph."

echo
echo "Sign in to Ollama if prompted."
ollama signin || true

# Some Ollama installs/library workflows support push; current docs may vary.
if ollama help 2>/dev/null | grep -E '^  push| push ' >/dev/null 2>&1; then
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
EOF
fi
