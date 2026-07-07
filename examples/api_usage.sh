#!/usr/bin/env bash
set -euo pipefail

curl http://localhost:11434/api/chat \
  -H 'Content-Type: application/json' \
  -d '{
    "model": "murica-llm",
    "messages": [
      {"role": "user", "content": "Give me a fake warning label."}
    ],
    "stream": false
  }'
