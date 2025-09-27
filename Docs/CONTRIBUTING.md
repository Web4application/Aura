# CONTRIBUTING to Aura

Thank you for helping build Aura — a multidisciplinary research hub. This guide explains how to contribute safely and consistently.

## How to propose changes

1. Fork the repo and create a branch named `feature/<short-description>`.
2. Update code, add tests (pytest), and update `schema/aura_schema.yaml` if sheets/columns change.
3. Run tests locally: `pytest -q`.
4. Open a Pull Request to `main` with a clear description and link to any related issue.

## Workbook schema & versioning

- The canonical schema is `schema/aura_schema.yaml`. If you add/rename columns or sheets, update this file and increment `schema_version`.
- For breaking schema changes, create `schema/aura_schema_v2.yaml` and add migration notes to `docs/schema-migrations.md`.

## Data policies

- Never commit real personal data. Use synthetic or anonymized example data only.
- Follow privacy laws and research ethics. Document consent and anonymization procedures in `Ethics_Notes`.

## Tests & CI

- Add tests for functionality you change. CI will run pytest on pushes and PRs.

## Code style

- Python: follow PEP8. Keep functions small and documented.
- Use type hints where helpful.

## Getting help

Open an issue and tag `@maintainers` or post on the project discussion board.
