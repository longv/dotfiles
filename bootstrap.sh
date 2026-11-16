#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
source "$DOTFILES/lib/os.sh"

OS="$(detect_os)"
echo "Platform: $OS"

# --- Install prereqs (per platform) ---
install_prereqs_macos() {
  if ! command -v brew >/dev/null 2>&1; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  if ! command -v stow >/dev/null 2>&1; then
    echo "📦 Installing GNU stow..."
    brew install stow
  fi
}

install_prereqs_arch() {
  if ! command -v stow >/dev/null 2>&1; then
    echo "📦 Installing GNU stow..."
    sudo pacman -S --needed stow
  fi
}

case "$OS" in
  macos) install_prereqs_macos ;;
  arch)  install_prereqs_arch ;;
  *)
    if ! command -v stow >/dev/null 2>&1; then
      echo "Unsupported platform '$OS': install GNU stow manually, then re-run." >&2
      exit 1
    fi
    ;;
esac

# --- Ensure ~/.config exists so stow links into it instead of replacing it ---
mkdir -p ~/.config

# --- tmux plugin manager ---
if command -v tmux >/dev/null 2>&1 && [[ ! -d ~/.tmux/plugins/tpm ]]; then
  echo "🔌 Installing tpm..."
  git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# --- Stow everything ---
echo "🔗 Linking dotfiles..."
bash "$DOTFILES/stow.sh"

echo "🚀 Bootstrap complete!"
