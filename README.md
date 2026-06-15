# Research Skills For Codex

GitHub-friendly shared Codex skills for collaborative academic work in:

- design research
- HCI
- CS

This repository packages portable custom skills that can be symlinked into `~/.codex/skills`.

## Included Skills

- `research-collab`
- `paper-reading`
- `journal-profiling`
- `ai-paper-reviewer`

## Optional Upstream Skills

These custom skills work best when the following open-source skills are also installed:

- `paper-spine` and its branches
- `research-paper-writing`
- `journal-recommender`
- `cli-anything-zotero` if you use Zotero workflows

## Install Shared Skills

From the repository root:

```bash
bash scripts/install.sh
```

This creates symlinks from `skills/*` into `~/.codex/skills/`.

Then restart Codex.

## Install Optional Upstream Dependencies

```bash
bash scripts/install-optional-upstreams.sh
```

This installs:

- `paper-spine`
- `research-paper-writing`
- `journal-recommender`

It does not install `cli-anything-zotero`, because Zotero setups vary across machines.

## Update Workflow

After pulling new changes:

```bash
git pull
bash scripts/install.sh
```

Then restart Codex.
