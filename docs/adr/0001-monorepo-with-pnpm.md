# ADR 0001: Mono repo with pnpm workspaces

**Status:** Accepted
**Date:** 2026-01-01

## Context

We need to manage multiple related packages (core logic, Stellar wrapper, UI, contracts) plus apps (web, docs) in a single repository.

## Decision

Use pnpm workspaces. Reasons:
- Lighter than Nx/Turborepo for our size
- Strict dependency isolation by default
- Fast installs via content-addressable store
- Native to Node.js, no extra CLI to learn

## Consequences

**Positive:**
- Single install, single lockfile
- Easy cross-package imports during dev
- Cheap to add new packages

**Negative:**
- Contributors need to learn pnpm (minor)
- CI must use pnpm consistently

## Alternatives considered

- **Turborepo**: more powerful build orchestration, but overkill at our size. Easy to add later.
- **Nx**: enterprise-scale features we don't need.
- **Lerna**: deprecated/unmaintained for our use case.
- **Multi-repo**: too much coordination cost for tightly coupled packages.
