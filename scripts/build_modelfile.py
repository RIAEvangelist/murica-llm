#!/usr/bin/env python3
"""Render an Ollama Modelfile from local persona data.

Usage:
  python3 scripts/build_modelfile.py
  BASE_MODEL=gemma4:26b NUM_CTX=32768 python3 scripts/build_modelfile.py
"""

from __future__ import annotations

import json
import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def read_system_prompt() -> str:
    text = (ROOT / "data" / "persona_system_prompt.md").read_text(encoding="utf-8")
    match = re.search(r"```text\n(.*?)\n```", text, flags=re.S)
    return match.group(1).strip() if match else text.strip()


def render_messages(limit: int = 3) -> str:
    path = ROOT / "data" / "training_examples.jsonl"
    lines: list[str] = []
    for raw in path.read_text(encoding="utf-8").splitlines()[:limit]:
        if not raw.strip():
            continue
        item = json.loads(raw)
        for message in item["messages"]:
            role = message["role"]
            content = message["content"].replace("\n", "\\n")
            lines.append(f"MESSAGE {role} {content}")
        lines.append("")
    return "\n".join(lines).strip()


def main() -> None:
    replacements = {
        "BASE_MODEL": os.getenv("BASE_MODEL", "gemma4:26b"),
        "TEMPERATURE": os.getenv("TEMPERATURE", "1"),
        "TOP_K": os.getenv("TOP_K", "64"),
        "TOP_P": os.getenv("TOP_P", "0.95"),
        "MIN_P": os.getenv("MIN_P", "0.05"),
        "REPEAT_PENALTY": os.getenv("REPEAT_PENALTY", "1.08"),
        "REPEAT_LAST_N": os.getenv("REPEAT_LAST_N", "256"),
        "NUM_CTX": os.getenv("NUM_CTX", "8192"),
        "NUM_PREDICT": os.getenv("NUM_PREDICT", "2048"),
        "SYSTEM_PROMPT": read_system_prompt(),
        "MESSAGES": render_messages(limit=int(os.getenv("FEW_SHOT_LIMIT", "3"))),
    }

    template = (ROOT / "templates" / "Modelfile.template").read_text(encoding="utf-8")
    for key, value in replacements.items():
        template = template.replace("{{" + key + "}}", value)

    out = ROOT / "Modelfile.generated"
    out.write_text(template.strip() + "\n", encoding="utf-8")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
