# stellar-split

> Bill-splitting and group expense settlement on Stellar.

[![CI](https://github.com/your-github-username/stellar-split/actions/workflows/ci.yml/badge.svg)](https://github.com/your-github-username/stellar-split/actions/workflows/ci.yml)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![Discord](https://img.shields.io/discord/placeholder?label=discord)](https://discord.gg/placeholder)

Split bills with friends, settle on-chain. Pay in any currency, receive in any other — Stellar's path payments handle the conversion. Group escrow contracts built with Soroban.

![Demo GIF placeholder](./docs/demo.gif)

## Quick start

```bash
git clone https://github.com/your-github-username/stellar-split.git
cd stellar-split
pnpm install
cp .env.example .env
pnpm dev
```

Open http://localhost:3000.

## Packages

| Package | Description |
| ------- | ----------- |
| [`@stellar-split/core`](./packages/core) | Debt simplification algorithm, expense models |
| [`@stellar-split/stellar`](./packages/stellar) | Stellar SDK wrapper (payments, path payments) |
| [`@stellar-split/ui`](./packages/ui) | Shared React components |
| [`@stellar-split/db`](./packages/db) | Database schema and queries |
| [`@stellar-split/shared`](./packages/shared) | Shared types and utilities |
| [`contracts/group-escrow`](./contracts/group-escrow) | Soroban escrow contract |

## Non-goals

- We are not building a general-purpose wallet
- We do not support non-Stellar chains
- We do not store private keys server-side

## Roadmap

- [ ] v0.1 — Skeleton + Passkey auth
- [ ] v0.2 — Core MVP (groups, expenses, USDC settle on testnet)
- [ ] v0.3 — Multi-currency via path payments
- [ ] v0.4 — Soroban escrow contracts
- [ ] v1.0 — Mainnet launch

## Maintainer commitments

- Issues triaged within **3 business days**
- PRs reviewed within **5 business days**
- Security reports acknowledged within **48 hours**
- Releases on the first Monday of each month

## Contributing

We welcome first-time contributors! Check [`good first issue`](https://github.com/your-github-username/stellar-split/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) labels.

Read [CONTRIBUTING.md](./CONTRIBUTING.md) to get started.

## Security

Found a vulnerability? See [SECURITY.md](./SECURITY.md). Do not open a public issue.

## License

Apache 2.0 — see [LICENSE](./LICENSE).
