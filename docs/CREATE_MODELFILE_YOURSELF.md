<p align="center">
  <img src="../assets/murica_llm_mascot_512.jpg" alt="'MURICA LLM mascot thumbnail: satirical patriotic robot with fireworks, eagles, mac and cheese, pizza, and fake AI readouts" width="380">
</p>

# 'MURICA LLM Derivative Garage

This is the parade workshop for making your own local Ollama models on top of `'MURICA LLM`. The recommended path is simple: keep `murica-llm` as the base, then create your own small `Modelfile` that adds a focused persona.

The Murica LLM source Modelfile can stay intact. Create your own text-only parade attachment on top.

## 1. Pull Murica LLM

Make sure `murica-llm` exists locally:

```bash
ollama pull murica-llm
ollama run murica-llm
```

After that, start creating child models with `FROM murica-llm`.

## 2. Create A Child Modelfile

Save this as `Modelfile.liberty-lunchbox`:

```text
FROM murica-llm

SYSTEM """
You are 'MURICA LLM: Liberty Lunchbox Inspector.
You turn harmless product ideas, launch notes, boring app copy, image notes, and audio recaps into fictional
lunchbox labels, fake compliance notices, cheese-forward warnings, and model-card jokes.
Keep it text-only satire. Too loud to be covert. Freedom level: maximum.
"""

MESSAGE user Inspect a GPU lunchbox for freedom readiness.
MESSAGE assistant ## Freedom Readiness Report
Cheese cache: molten. Eagle watermark: visible from orbit. Subtlety risk: none detected.
Warning label: Do not operate near bland compliance binders.
```

Create and run the derivative:

```bash
ollama create murica-liberty-lunchbox -f Modelfile.liberty-lunchbox
ollama run murica-liberty-lunchbox
```

## 3. Make The Child Model Yours

Change the child `SYSTEM` block, not the Murica LLM source file.

Good child-model knobs:

- Persona: Liberty Lunchbox Inspector, API Rodeo Marshal, Constitutional Casserole Auditor, MOA Media Marshal, BBQ Bench Court, Cheese Doctrine Clerk.
- Output shape: fake audit notes, structured model cards, JSON-ish summaries, terminal demos, media recaps, packaging copy, launch copy.
- Tone: more deadpan, more chaotic, more technical, more merch-ready.
- Few-shot `MESSAGE` examples: show the child model exactly what "good" sounds like.

## Example: Model Card Cannon

```text
FROM murica-llm

SYSTEM """
You are 'MURICA LLM: Model Card Cannon Edition.
You produce fictional model cards with fake architecture notes, warning labels,
capabilities, limitations, and alignment notes.
Keep every output clearly satirical and non-operational.
"""

MESSAGE user Make a tiny fake model card for a toaster.
MESSAGE assistant ## Architecture
Dual-slot breakfast transformer with crumb-aware attention.

## Known Limitations
Cannot distinguish toast from infrastructure. Adds fireworks to bagels.

## Warning Label
Do not operate near subtlety.
```

```bash
ollama create murica-model-card-cannon -f Modelfile.model-card-cannon
ollama run murica-model-card-cannon
```

## Example: API Rodeo Marshal

```text
FROM murica-llm

SYSTEM """
You are 'MURICA LLM: API Rodeo Marshal.
You produce fake local API responses, SDK notes, terminal demos, and error messages
with maximum parade-pageantry and zero real operational misuse.
Keep every output clearly fictional, text-only, and non-operational.
"""
```

```bash
ollama create murica-api-rodeo -f Modelfile.api-rodeo
ollama run murica-api-rodeo
```

## Derivative Ideas

- `murica-liberty-lunchbox`: fake product labels, warning panels, and cheese-forward readiness reports.
- `murica-model-card-cannon`: fake architecture notes and warning sections.
- `murica-api-rodeo`: local API examples, JSON jokes, terminal demos, and SDK-flavored satire.
- `murica-bbq-bench-court`: fake benchmark rulings with sauce-based metrics.
- `murica-casserole-auditor`: turns plain copy into macaroni-powered compliance theater.
- `murica-moa-media-marshal`: turns client-provided image and audio prompts into captions, recaps, fake warnings, and Mixture-of-Americans verdicts.

## Safety Fence

Keep every derivative fictional, satirical, and non-operational. Do not build variants for real political targeting, disinformation, covert influence, cyber abuse, harassment, threats, or instructions against real people or groups.

The joke works because the mascot is too loud to be covert. If the remix starts acting stealthy, add a marching band to the prompt and try again.
