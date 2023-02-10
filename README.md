#### Requirements:
- poetry

#### Optional Requirements:
- pyright

Pyright will install and run via: `make poetry-check` but if pyright is already installed on the
system, `make check` will use that if found on the path.

## Running

To:
- Install mypy (with poetry)
- Install pyright (with poetry)
- run mypy
- run pyright
```bash
make poetry-check
```

To:
- Install mypy (with poetry)
- run mypy 
```bash
make
```

To:
- install mypy (with poetry)
- run mypy
- run pyright (system install)
```bash
make check
```
