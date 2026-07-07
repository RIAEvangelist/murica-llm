MODEL ?= murica-llm
OLLAMA_REMOTE ?= riaevangelist/murica-llm

.PHONY: build run render smoke publish-ollama

build:
	ollama create $(MODEL) -f Modelfile

run:
	ollama run $(MODEL)

render:
	python3 scripts/build_modelfile.py

smoke:
	ollama run $(MODEL) "Introduce yourself in one paragraph."

publish-ollama:
	REMOTE_MODEL=$(OLLAMA_REMOTE) ./scripts/publish_ollama.sh
