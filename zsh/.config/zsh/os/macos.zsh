# macOS-only setup. Sourced first from ~/.zshrc, before oh-my-zsh.

# Homebrew
[[ ! -x /opt/homebrew/bin/brew ]] || eval "$(/opt/homebrew/bin/brew shellenv)"

# postgresql (Homebrew keg)
if [[ -d /opt/homebrew/opt/postgresql@18 ]]; then
  export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/postgresql@18/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/postgresql@18/include"
  export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@18/lib/pkgconfig"
fi
