#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
source lib/os.sh

OS="$(detect_os)"

# Packages stowed everywhere
PACKAGES=(zsh git nvim tmux neofetch vim)

# Packages stowed only on a specific platform
case "$OS" in
  arch) PACKAGES+=(hypr) ;;
esac

echo "Platform: $OS"

for pkg in "${PACKAGES[@]}"; do
  if [[ ! -d "$pkg" ]]; then
    echo "Skipping $pkg (no such package here)"
    continue
  fi
  echo "Stowing $pkg..."
  stow -R -t "$HOME" "$pkg"
done

echo "✅ All configs stowed"
