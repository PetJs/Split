#!/usr/bin/env bash
# One-shot dev environment setup
set -e

echo "==> Checking prerequisites..."
command -v node >/dev/null || { echo "Node.js 20+ required"; exit 1; }
command -v pnpm >/dev/null || { echo "Run: npm install -g pnpm"; exit 1; }
command -v cargo >/dev/null || { echo "Rust required: https://rustup.rs"; exit 1; }

echo "==> Adding wasm target..."
rustup target add wasm32-unknown-unknown

echo "==> Installing Stellar CLI..."
cargo install --locked stellar-cli || true

echo "==> Installing dependencies..."
pnpm install

echo "==> Copying env file..."
[ -f .env ] || cp .env.example .env

echo "==> Done! Run 'pnpm dev' to start."
