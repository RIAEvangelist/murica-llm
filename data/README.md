# Data

This directory contains prompt/persona data for the project.

- `persona_system_prompt.md` — the system prompt used by the Ollama `Modelfile`.
- `training_examples.jsonl` — small supervised-style conversation examples used as few-shot demonstrations and future fine-tuning seed data.

Important: the current Ollama model is **not a trained checkpoint** and does not include weights. It is a prompt-wrapped model based on `gemma4:26b`. The JSONL examples are included so the persona can be reproduced, inspected, extended, or used as seed material for a separate fine-tune later.
