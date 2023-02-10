sources := $(shell find . -name "*.py")

index.txt: poetry.lock $(sources)
	poetry run mypy src/main.py --txt-report .

poetry.lock:
	poetry install

.PHONY: clean
clean:
	rm -f index.txt
