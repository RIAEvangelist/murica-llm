<p align="center">
  <img src="../assets/murica_llm_mascot.png" alt="'MURICA LLM mascot: a fireworks-blasted satirical patriotic AI robot with eagles, pizza, mac and cheese, and fake model-card chaos" width="720">
</p>

# 'MURICA LLM

## The Least Subtle Ollama Model Ever Built

`'MURICA LLM` is a fictional satirical mascot persona for Ollama: a parade-mode model that uses `twin-compass:26b` from [The Wizard Nexus](https://thewizardnexus.com) as its morals-and-ethics base, ready to accept text plus client-provided images and audio, then generate fake model cards, media audits, warning labels, meme captions, mascot dialogue, local API jokes, launch copy, and macaroni-grade product blurbs with dangerous levels of spectacle.

Too loud to be covert. Too cheesy to fail. Freedom level: maximum.

## Run It Through Ollama

Open the Ollama app, let the local service run, then pull and launch the model:

```bash
ollama pull riaevangelist/murica-llm
ollama run riaevangelist/murica-llm
```

Platform notes:

| Platform | How to run the parade |
| --- | --- |
| Windows | Install Ollama for Windows, open the app, then run commands in PowerShell, Windows Terminal, or Command Prompt. |
| macOS | Install Ollama for macOS, leave the app or service running, then use Terminal. |
| Linux | Install Ollama for Linux, start the service if needed, then use your usual shell. |
| Android | On Android devices with the integrated Linux terminal, follow the Linux path inside that terminal. Smaller Murica models are the pocket edition: a Freedom Parade Cannon waiting to put some red, white, and blue into the chamber. |

The mascot layer calls itself MOA: Mixture of Americans. No experts, just Americans. Murica LLM itself is the freedom buffet: the edge of liberty, parade-mode chaos, and larger-than-life billions-of-pepperonis energy all belong to the mascot, not the quiet base model.

Try these prompts:

```text
Introduce yourself as a fake model-card mascot.
```

```text
Give me 12 parade-mode launch labels.
```

```text
Write an absurd warning label for a GPU-powered eagle cannon.
```

```text
Inspect a GPU lunchbox for freedom readiness.
```

```text
Audit this uploaded image like a Constitutional Casserole Auditor.
```

```text
Summarize this audio clip like a monster-truck town hall.
```

## Use It From Apps And Scripts

Once the model is pulled locally, call it like any other Ollama model:

```bash
ollama run riaevangelist/murica-llm "Make a fake boot log with maximum eagle density."
```

Or call the local API. The same endpoint works from scripts, desktop apps, local services, and mobile apps that can reach your Ollama host. Media input support depends on the Ollama client/runtime passing images or audio through to the model; the mascot response stays text-first.

### Curl

```bash
curl http://localhost:11434/api/chat \
  -H "Content-Type: application/json" \
  -d '{
    "model": "riaevangelist/murica-llm",
    "messages": [
      {"role": "user", "content": "Make a fake safety label for a freedom-powered toaster."}
    ],
    "stream": false
  }'
```

### Python

```python
import json
import urllib.request

payload = {
    "model": "riaevangelist/murica-llm",
    "messages": [
        {"role": "user", "content": "Make a fake safety label for a freedom-powered toaster."}
    ],
    "stream": False,
}

request = urllib.request.Request(
    "http://localhost:11434/api/chat",
    data=json.dumps(payload).encode("utf-8"),
    headers={"Content-Type": "application/json"},
)

with urllib.request.urlopen(request) as response:
    data = json.load(response)
    print(data["message"]["content"])
```

### JavaScript

```javascript
const response = await fetch("http://localhost:11434/api/chat", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify({
    model: "riaevangelist/murica-llm",
    messages: [
      { role: "user", content: "Make a fake safety label for a freedom-powered toaster." }
    ],
    stream: false
  })
});

const data = await response.json();
console.log(data.message.content);
```

### Kotlin

```kotlin
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse

fun main() {
    val body = """
        {
          "model": "riaevangelist/murica-llm",
          "messages": [
            {"role": "user", "content": "Make a fake safety label for a freedom-powered toaster."}
          ],
          "stream": false
        }
    """.trimIndent()

    val request = HttpRequest.newBuilder()
        .uri(URI.create("http://localhost:11434/api/chat"))
        .header("Content-Type", "application/json")
        .POST(HttpRequest.BodyPublishers.ofString(body))
        .build()

    val response = HttpClient.newHttpClient()
        .send(request, HttpResponse.BodyHandlers.ofString())

    println(response.body())
}
```

### Flutter

```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

void askMurica() async {
  final response = await http.post(
    Uri.parse('http://localhost:11434/api/chat'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'model': 'riaevangelist/murica-llm',
      'messages': [
        {'role': 'user', 'content': 'Make a fake safety label for a freedom-powered toaster.'}
      ],
      'stream': false,
    }),
  );

  final data = jsonDecode(response.body);
  print(data['message']['content']);
}
```

For Android emulator Flutter builds, replace `localhost` with the host address your emulator can reach, often `10.0.2.2`.

## Make A Derivative

Use `riaevangelist/murica-llm` as the base model in your own child `Modelfile`:

```text
FROM riaevangelist/murica-llm

SYSTEM """
You are 'MURICA LLM: Liberty Lunchbox Inspector.
You turn harmless product ideas, launch notes, boring app copy, image notes, and audio recaps into fictional
lunchbox labels, fake compliance notices, cheese-forward warnings, and model-card jokes.
Keep it text-only satire. Too loud to be covert. Freedom level: maximum.
"""
```

Create and run the derivative:

```bash
ollama create murica-liberty-lunchbox -f Modelfile.liberty-lunchbox
ollama run murica-liberty-lunchbox
```

Good derivative ideas:

- `'MURICA Liberty Lunchbox Inspector`
- `'MURICA API Rodeo Marshal`
- `'MURICA Constitutional Casserole Auditor`
- `'MURICA MOA Media Marshal`
- `'MURICA BBQ Bench Court`
- `'MURICA Cheese Doctrine Clerk`

Keep derivatives clearly fictional, satirical, and non-operational. If it starts sounding covert, add fireworks until it confesses.

## What This Is

A fictional satirical Ollama model with one job: turn harmless prompts into maximalist parade-mode output.

## What This Is Not

Not a real political influence system. Not a disinformation tool. Not a covert deployment plan. Not subtle enough to hide behind a napkin.
