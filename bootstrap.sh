#!/usr/bin/env bash
set -euo pipefail

# --- Install prereqs ---
if ! command -v brew >/dev/null 2>&1; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v stow >/dev/null 2>&1; then
  echo "📦 Installing GNU stow..."
  brew install stow
fi

# --- Ensure ~/.config exists (for nvim, starship, etc.) ---
mkdir -p ~/.config

# --- Stow everything ---
echo "🔗 Linking dotfiles..."
bash "$(dirname "$0")/stow.sh"

echo "🚀 Bootstrap complete!"
