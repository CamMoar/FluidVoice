#!/usr/bin/env bash
# sync-upstream.sh
# Pull latest changes from altic-dev/FluidVoice into your fork.
# Run this whenever you want to pick up upstream updates.
# After syncing, your custom patches are rebased on top of the latest upstream.
set -euo pipefail

echo "Fetching upstream (altic-dev/FluidVoice)..."
git fetch upstream

echo "Rebasing your patches on top of upstream/main..."
git rebase upstream/main

echo "Pushing updated fork to origin..."
git push origin main --force-with-lease

echo "Done. Fork is up to date with upstream."
