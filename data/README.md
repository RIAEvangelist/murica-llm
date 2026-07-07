# 'MURICA LLM Data

This folder contains the prompt fuel for the Ollama persona.

- `persona_system_prompt.md` - the system prompt used by the Ollama `Modelfile`.
- `training_examples.jsonl` - expanded supervised-style conversation examples used as few-shot demonstrations and future fine-tuning seed data.
- `style_guide.md` - the parade manual for keeping docs, model pages, and derivatives on-brand.

Important: this folder contains prompt and example data, not Twin Compass model weights. Murica LLM uses `twin-compass:26b` from The Wizard Nexus as its morals-and-ethics base model. The JSONL examples are included so the persona can be reproduced, inspected, extended, or used as seed material for future model work.

The source `Modelfile` renderer includes the first 32 examples by default. Set `FEW_SHOT_LIMIT` when rendering if a derivative needs a smaller or larger parade sample.
