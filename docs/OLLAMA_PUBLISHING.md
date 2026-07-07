# Ollama Publishing Notes

## Local build

```bash
ollama pull gemma4:26b
ollama create murica-llm -f Modelfile
ollama run murica-llm
```

## Sign in

```bash
ollama signin
```

## Publish path

Ollama's current public docs clearly document `ollama signin`, `ollama create`, and `ollama run`. Depending on your installed Ollama version and account/library access, you may also have a push/publish workflow available from the CLI or web UI.

Try:

```bash
ollama help
```

If your CLI lists `push`, then:

```bash
ollama cp murica-llm RIAEvangelist/murica-llm
ollama push RIAEvangelist/murica-llm
```

If `push` is not available, create/build the local model and use the files in this repo as the Ollama page assets:

- `ollama/README.ollama.md`
- `ollama/model_card.md`
- `assets/murica_llm_mascot.png`
- `assets/murica_llm_mascot_512.jpg`

## Recommended model page description

```text
'MURICA LLM: the least subtle Ollama model ever built. A fictional satirical mascot persona based on gemma4:26b. Too loud to be covert. Too cheesy to fail. Freedom level: maximum.
```
