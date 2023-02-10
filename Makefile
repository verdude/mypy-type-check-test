sources := $(shell find src -name "*.py")

index.txt: poetry.lock $(sources)
	poetry run mypy src/main.py --txt-report .

poetry.lock: pyproject.toml
	poetry install
	# touch because lockfile is not accessed
	# unless there were package changes which
	# causes this target to run every single time.
	touch poetry.lock

.PHONY: clean
clean:
	rm -f index.txt

.PHONY: check
poetry-check: poetry.lock clean
	# run mypy first
	make
	# pyright via poetry
	poetry run pyright

.PHONY: check
check: poetry.lock clean
	# run mypy first
	make
	# pre-installed pyright
	pyright
