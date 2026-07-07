<p align="center">
  <img src="../assets/murica_llm_mascot.png" alt="'MURICA LLM full mascot art with fireworks, eagles, mac and cheese, pizza, rockets, and fake model-card slogans" width="700">
</p>

# 'MURICA LLM Ollama Page Kit

This page is the Ollama-side launch checklist: pull it locally, smoke-test the parade cannon, then use the model-page copy and images.

Publishing the official package has its own maintainer-only guide: [PUBLISH_TO_OLLAMA.md](PUBLISH_TO_OLLAMA.md).

## Local Pull

Open the Ollama app so the service is running, then:

```bash
ollama pull murica-llm
ollama run murica-llm
```

Platform notes:

- Windows: install Ollama for Windows, open the app, then run the commands in PowerShell, Windows Terminal, or Command Prompt.
- macOS: install Ollama for macOS, keep the app or service running, then use Terminal.
- Linux: install Ollama for Linux, start the service if needed, then use any shell.
- Android: on devices with the integrated Linux terminal, use the Linux path inside that terminal. Smaller Murica models are intended for the pocket parade: a Freedom Parade Cannon waiting to put red, white, and blue into the chamber.

Smoke-test prompt:

```text
Introduce yourself in one paragraph.
```

Expected vibe: loud, fictional, self-aware, cheese-biased, and absolutely not subtle.

## Model Page Assets

If your workflow uses a web UI, use these assets for the model page:

- `ollama/README.ollama.md`
- `ollama/model_card.md`
- `assets/murica_llm_mascot.png`
- `assets/murica_llm_mascot_512.jpg`
- `assets/murica_llm_mascot_512.png`

## Recommended Model Page Description

```text
'MURICA LLM: the least subtle Ollama model ever built. A fictional satirical mascot persona using twin-compass:26b from The Wizard Nexus as its morals-and-ethics base model and packaged as the parade-mode base for derivatives. The Murica mascot layer is the freedom buffet: the edge of liberty, parade-mode chaos, and billions-of-pepperonis energy. It accepts text plus client-provided images and audio, then makes fake model cards, media audits, meme captions, warning labels, local API jokes, launch copy, and macaroni-grade product blurbs. Architecture joke: MOA, Mixture of Americans. No experts, just Americans. Too loud to be covert. Freedom level: maximum.
```

## Thumbnail Guidance

Use the full mascot art when the page can handle a big banner. Use `murica_llm_mascot_512.jpg` for square thumbnails, cards, social previews, or any place where the parade has to fit inside a tiny box while still yelling.

## Derivative Publishing Note

Derivative models should have their own names and descriptions. Keep the safety boundary visible: fictional satire, not real political influence, disinformation, covert deployment, cyber abuse, harassment, or targeting.
