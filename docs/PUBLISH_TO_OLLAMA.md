<p align="center">
  <img src="../assets/murica_llm_mascot_512.jpg" alt="'MURICA LLM mascot thumbnail" width="220">
</p>

# Publish To Ollama

This file is the maintainer-only publishing checklist for the official `murica-llm` Ollama package.

Most users should not run this. They should pull and run the published model:

```bash
ollama pull murica-llm
ollama run murica-llm
```

## Prerequisites

- Ollama is installed and the app or service is running.
- You are signed in to the Ollama account that owns the target namespace.
- The source model can be created locally from `Modelfile`.
- Any private or local base referenced by `Modelfile`, including `twin-compass:26b`, is already available to your local Ollama runtime.

## Render And Smoke Test

Rebuild the source `Modelfile`, create the local model, and make sure the mascot can still yell correctly:

```bash
make render
make build
make smoke
```

To use a temporary local name while testing:

```bash
make build MODEL=murica-llm-publish-test
make smoke MODEL=murica-llm-publish-test
```

## Publish

Use your Ollama namespace for `OLLAMA_REMOTE`:

```bash
make publish-ollama OLLAMA_REMOTE=your-ollama-name/murica-llm
```

The helper script creates the local model from `Modelfile`, runs a smoke test, asks Ollama to sign in if needed, then pushes when the installed CLI supports `push`.

## Model Page Assets

Use these files for the Ollama model page:

- [ollama/README.ollama.md](../ollama/README.ollama.md)
- [ollama/model_card.md](../ollama/model_card.md)
- [ollama/tags.md](../ollama/tags.md)
- [assets/murica_llm_mascot.png](../assets/murica_llm_mascot.png)
- [assets/murica_llm_mascot_512.jpg](../assets/murica_llm_mascot_512.jpg)
- [assets/murica_llm_mascot_512.png](../assets/murica_llm_mascot_512.png)

## Safety Check

Before publishing, confirm the model page still says this is fictional satire for fake model cards, warning labels, media audits, launch copy, local API jokes, and harmless mascot copy. It should not present itself as a covert influence system, political operation tool, cyber abuse helper, or harassment engine.
