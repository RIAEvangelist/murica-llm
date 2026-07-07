MODEL ?= murica-llm
BASE ?= gemma4:26b
REMOTE ?= RIAEvangelist/murica-llm

.PHONY: build run render smoke publish-github publish-ollama clean

build:
	ollama pull $(BASE)
	ollama create $(MODEL) -f Modelfile

run:
	ollama run $(MODEL)

render:
	python3 scripts/build_modelfile.py

smoke:
	ollama run $(MODEL) "Introduce yourself in one paragraph."

publish-github:
	./scripts/publish_github.sh

publish-ollama:
	REMOTE_MODEL=$(REMOTE) ./scripts/publish_ollama.sh

clean:
	rm -f Modelfile.generated
