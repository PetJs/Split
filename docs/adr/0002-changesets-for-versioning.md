# ADR 0002: Changesets for versioning and releases

**Status:** Accepted
**Date:** 2026-01-01

## Context

Multiple packages need independent versioning. We need automated changelogs and npm publishes.

## Decision

Use [Changesets](https://github.com/changesets/changesets) with the GitHub Action.

## Consequences

**Positive:**
- Contributors document their changes in PRs (changeset files)
- Automated PR for version bumps
- Automated npm publish with provenance
- Clean changelog per package

**Negative:**
- Contributors must remember to add changesets (CI warns if missing)

## Alternatives considered

- **semantic-release**: less flexible for monorepos
- **Manual versioning**: error-prone, doesn't scale
