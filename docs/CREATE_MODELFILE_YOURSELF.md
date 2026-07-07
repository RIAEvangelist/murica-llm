# Create the Modelfile Yourself

This repository includes both a finished `Modelfile` and the source pieces used to generate one.

## 1. Edit the persona

Update:

```text
data/persona_system_prompt.md
```

## 2. Edit the few-shot examples

Update:

```text
data/training_examples.jsonl
```

Each line is a JSON object with a `messages` array.

## 3. Render a Modelfile

```bash
python3 scripts/build_modelfile.py
```

That writes:

```text
Modelfile.generated
```

## 4. Build with Ollama

```bash
ollama pull gemma4:26b
ollama create murica-llm -f Modelfile.generated
ollama run murica-llm
```

## Optional parameters

```bash
BASE_MODEL=gemma4:26b NUM_CTX=32768 FEW_SHOT_LIMIT=5 python3 scripts/build_modelfile.py
```

## What this is

This is a prompt/persona wrapper for Ollama.

## What this is not

This is not a fine-tuned model checkpoint and does not redistribute model weights.
