# Contributing to stellar-split

Thanks for your interest! This doc tells you everything you need to know.

## Before you start

- Check open issues labeled `good first issue` or `help wanted`
- For new features, **open a discussion first**. Don't write code for something we won't merge.
- Read our [Architecture docs](./docs/adr/)

## Local setup

**Requirements:**
- Node.js 20+ ([nvm](https://github.com/nvm-sh/nvm) recommended)
- pnpm 9+ (`npm install -g pnpm`)
- Rust stable + `wasm32-unknown-unknown` target (for contracts)
- Stellar CLI (`cargo install --locked stellar-cli`)

**Setup:**

```bash
git clone https://github.com/YOUR-FORK/stellar-split.git
cd stellar-split
pnpm install
cp .env.example .env
pnpm dev
```

## Development workflow

1. **Fork & branch**: `feat/short-description` or `fix/short-description`
2. **Make changes**, add tests (we require >80% coverage on new code)
3. **Run locally**: `pnpm lint && pnpm test && pnpm build`
4. **Add a changeset**: `pnpm changeset`
5. **Push and open PR** against `main`

## Commit conventions

We use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` new feature
- `fix:` bug fix
- `docs:` docs only
- `refactor:` code change that neither fixes nor adds
- `test:` tests only
- `chore:` tooling / housekeeping
- `ci:` CI config changes

Breaking changes: add `!` (e.g., `feat!: rename API`).

Examples:
- `feat(stellar): add path payment support`
- `fix(ui): correct currency symbol for NGN`
- `docs: update setup instructions`

## Signed commits

We require signed commits on `main`. Set up GPG or SSH signing:

```bash
git config --global commit.gpgsign true
```

See [GitHub's signing guide](https://docs.github.com/en/authentication/managing-commit-signature-verification).

## PR requirements

- One logical change per PR (split large PRs)
- All CI checks must pass
- Linked issue in description (`Closes #123`)
- Updated docs if behavior changed
- Changeset added (unless docs/CI only)

## Review process

- Maintainers review within **5 business days**
- **One approval** required for most changes
- **Two approvals** required for changes to `/contracts` or `/packages/stellar`
- Address review comments by pushing new commits (don't force-push during review)

## Code style

- TypeScript strict mode, no `any` without comment justification
- Functional style preferred for `/packages/core`
- Tests: Vitest for TS, `soroban-sdk` test framework for Rust
- Formatting: Prettier (auto-applied via pre-commit hook)
- Linting: ESLint with our shared config

## Testing on Stellar testnet

```bash
# Generate a testnet account
stellar keys generate --network testnet alice
stellar keys fund alice --network testnet

# Run tests
pnpm test
```

Never commit testnet keys or mainnet keys.

## Reporting bugs

Use the [bug report template](.github/ISSUE_TEMPLATE/bug_report.yml). Include:
- Reproduction steps
- Expected vs actual behavior
- Network (testnet/mainnet)
- Package affected
- Environment (OS, Node version)

## Questions?

- [GitHub Discussions](https://github.com/your-github-username/stellar-split/discussions) for general questions
- Discord: link in README
- Don't open issues for questions
