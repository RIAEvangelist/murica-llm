#!/usr/bin/env bash
set -euo pipefail

MODEL_NAME="${MODEL_NAME:-murica-llm}"
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

echo "Creating $MODEL_NAME from $MODELFILE."
echo "Make sure private or local base models referenced by $MODELFILE are already available to Ollama."
ollama create "$MODEL_NAME" -f "$MODELFILE"

echo "Built $MODEL_NAME using $MODELFILE."
echo "Run it with: ollama run $MODEL_NAME"
