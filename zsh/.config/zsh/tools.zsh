# Tool setup shared across platforms. Every block is guarded on the tool
# being installed, so a machine without it starts cleanly.

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT" ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# jenv
if [[ -d "$HOME/.jenv" ]]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# go
if (( $+commands[go] )); then
  export PATH="$PATH:$(go env GOPATH)/bin"
fi

# terraform completion
if (( $+commands[terraform] )); then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C "$commands[terraform]" terraform
fi
