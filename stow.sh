#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# All packages to stow
PACKAGES=(zsh git nvim tmux neofetch vim)

for pkg in "${PACKAGES[@]}"; do
  echo "Stowing $pkg..."
  stow -R -t "$HOME" "$pkg"
done

echo "✅ All configs stowed"
