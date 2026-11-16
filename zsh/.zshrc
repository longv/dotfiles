# Layout:
#   ~/.config/zsh/os/<platform>.zsh  platform-specific setup (macos, arch, ...)
#   ~/.config/zsh/tools.zsh          language/tool setup, each guarded on the tool existing
#   ~/.config/zsh/pyenv.zsh          venv helper functions

ZSH_CONFIG="$HOME/.config/zsh"

# --- Platform ---
case "$OSTYPE" in
  darwin*) DOTFILES_OS=macos ;;
  linux*)
    DOTFILES_OS=linux
    if [[ -r /etc/os-release ]]; then
      DOTFILES_OS="$(. /etc/os-release; [[ "$ID" == arch || " $ID_LIKE " == *" arch "* ]] && echo arch || echo "${ID:-linux}")"
    fi
    ;;
  *) DOTFILES_OS=unknown ;;
esac
[[ ! -r "$ZSH_CONFIG/os/$DOTFILES_OS.zsh" ]] || source "$ZSH_CONFIG/os/$DOTFILES_OS.zsh"

# --- OhMyZsh ---
export ZSH="$HOME/.oh-my-zsh"
# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Utils
[[ ! -f "$ZSH_CONFIG/pyenv.zsh" ]] || source "$ZSH_CONFIG/pyenv.zsh"
# Plugins
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
  kubectl
  virtualenv
)
if (( $+commands[tmux] )); then
  plugins+=(tmux)
  ZSH_TMUX_AUTOSTART=true
fi

source $ZSH/oh-my-zsh.sh


# --- Aliases ---
alias vim="nvim"
alias vi="nvim"


# --- Configuration ---
export PATH="$HOME/.local/bin:$PATH"
[[ ! -r "$ZSH_CONFIG/tools.zsh" ]] || source "$ZSH_CONFIG/tools.zsh"

(( ! $+commands[neofetch] )) || neofetch
