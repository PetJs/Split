# Maintaining stellar-split

This doc is for maintainers. If you're a contributor, see [CONTRIBUTING.md](./CONTRIBUTING.md).

## Weekly triage (every Monday, 30 min)

1. Label all new issues (type, priority, area, difficulty)
2. Close obvious duplicates/spam
3. Tag 1–2 issues as `good first issue` if possible
4. Reply to stale discussions
5. Check Dependabot PRs and merge clean ones

## Reviewing PRs

- ✅ PR description references an issue
- ✅ Changeset is present (unless docs/CI only)
- ✅ Tests cover the change
- ✅ CI is green
- ✅ Run locally if touching contracts or payment paths
- Be kind but firm: request splits if PR is too big

## Maintainer constraints (do not break these)

1. Never merge your own PRs without review
2. Never push directly to `main`
3. Never merge without CI green
4. Never accept a PR without a changeset (except docs/CI)
5. Never expand scope mid-PR
6. Never deploy to mainnet on a Friday
7. Never store secrets outside GitHub Secrets / `.env` (gitignored)
8. Always respond within SLA, even if just "I need more time"
9. Always credit contributors in release notes
10. Always document the reason for `wontfix` closures

## Releasing

We use [Changesets](https://github.com/changesets/changesets):

1. Contributors add a changeset with their PR (`pnpm changeset`)
2. On merge to `main`, the release workflow opens/updates a "Version Packages" PR
3. Merging that PR triggers npm publish with provenance
4. Post release notes to Discord + Twitter
5. Update docs site if needed

## Deploying contracts

**Testnet** — auto-deploys from `main` (no approval needed).

**Mainnet** — requires manual workflow_dispatch + approval from two maintainers via the `mainnet` GitHub environment.

```bash
# From GitHub UI: Actions → Deploy Contracts → Run workflow → mainnet
```

## Onboarding a co-maintainer

Promote contributors who have:
- 5+ merged PRs
- Been active for 3+ months
- Demonstrated good judgment in reviews

Steps:
1. Promote to **triage role** first (can label/close, can't merge)
2. After 1 month, promote to full maintainer
3. Add to `.github/CODEOWNERS`
4. Add to npm org with publish rights
5. Give Discord moderator role
6. Add to `mainnet` environment reviewers

## Removing a maintainer

If a maintainer is inactive for 6+ months or violates the Code of Conduct:
1. Discuss privately with other maintainers
2. Remove from CODEOWNERS
3. Remove from npm publish access
4. Document the change in CHANGELOG
