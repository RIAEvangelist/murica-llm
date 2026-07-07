# 'MURICA LLM

<p align="center">
  <img src="assets/murica_llm_mascot.png" alt="'MURICA LLM mascot: a hyper-saturated satirical patriotic AI robot surrounded by eagles, fireworks, mac and cheese, pizza, and fake model-card chaos" width="520">
</p>

<p align="center">
  <strong>The least subtle Ollama model ever built.</strong><br>
  Too loud to be covert. Too cheesy to fail. Freedom level: maximum.
</p>

`'MURICA LLM` is a fictional satirical AI mascot/persona for Ollama, built as a custom `Modelfile` wrapper around `gemma4:26b`.

It is trained by prompt, not weights, to generate absurd parody slogans, fake model cards, warning labels, sticker copy, meme captions, and over-the-top image prompts.

## What this repo contains

```text
.
├── Modelfile                       # Ollama model definition
├── assets/                         # Mascot images and alt text
├── data/                           # Persona prompt and training-style examples
├── docs/                           # Build and publishing docs
├── examples/                       # Example chat and prompts
├── ollama/                         # Ollama model-page assets
├── scripts/                        # Build/publish helper scripts
└── templates/                      # Modelfile source template
```

## Quick start

```bash
ollama pull gemma4:26b
ollama create murica-llm -f Modelfile
ollama run murica-llm
```

Then try:

```text
Introduce yourself.
```

## Example output

```text
I AM 'MURICA LLM: the least subtle AI mascot ever built. Trained on BBQ, bald eagles, pickup trucks, fireworks, Founding Fathers, mac and cheese, pizza, and excessive confidence. Too loud to be covert. Too cheesy to fail. Freedom level: maximum.
```

## Build from source pieces

The root `Modelfile` is ready to use, but you can regenerate one from the source prompt and examples:

```bash
python3 scripts/build_modelfile.py
ollama create murica-llm -f Modelfile.generated
```

See [`docs/CREATE_MODELFILE_YOURSELF.md`](docs/CREATE_MODELFILE_YOURSELF.md).

## Data

This repo includes prompt/persona data:

- [`data/persona_system_prompt.md`](data/persona_system_prompt.md)
- [`data/training_examples.jsonl`](data/training_examples.jsonl)
- [`data/style_guide.md`](data/style_guide.md)

The JSONL file is small supervised-style seed data for inspection, few-shot examples, or a future fine-tune. The current Ollama model is not a fine-tuned checkpoint and does not include base-model weights.

## GitHub publishing

If you have GitHub CLI installed:

```bash
./scripts/publish_github.sh
```

Or manually:

```bash
git init
git add .
git commit -m "Initial 'MURICA LLM Ollama model"
git branch -M main
git remote add origin git@github.com:RIAEvangelist/murica-llm.git
git push -u origin main
```

## Ollama publishing

Build locally first:

```bash
./scripts/create_local_model.sh
```

Then see [`docs/OLLAMA_PUBLISHING.md`](docs/OLLAMA_PUBLISHING.md). Ollama page assets live in [`ollama/`](ollama/).

## Example chat

See [`examples/example_chat.md`](examples/example_chat.md).

## Safety / satire boundary

This project is for fictional parody, mascot copy, memes, fake model cards, sticker slogans, and harmless cyber-political satire.

It is not for real-world political influence operations, disinformation, covert deployment planning, cyber abuse, harassment, threats, or operational guidance against real people, countries, parties, ethnic groups, or political communities.

The core joke is that the mascot is **too loud to be covert**.

## License

Repo assets and prompt text are MIT-licensed unless otherwise noted. The base model `gemma4:26b` is referenced but not redistributed here; review the base model license and Ollama terms before distributing or publishing derivative model packages.
