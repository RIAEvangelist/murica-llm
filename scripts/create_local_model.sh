#!/usr/bin/env bash
set -euo pipefail

MODEL_NAME="${MODEL_NAME:-murica-llm}"
BASE_MODEL="${BASE_MODEL:-gemma4:26b}"
MODELFILE="${MODELFILE:-Modelfile}"

ollama pull "$BASE_MODEL"
ollama create "$MODEL_NAME" -f "$MODELFILE"

echo "Built $MODEL_NAME from $BASE_MODEL."
echo "Run it with: ollama run $MODEL_NAME"
