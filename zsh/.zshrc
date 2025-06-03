eval "$(/opt/homebrew/bin/brew shellenv)"


# zsh
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

plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
  git
  kubectl
  virtualenv
)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh


# Aliases
alias vim="nvim"
alias vi="nvim"


# Congiguration
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gcloud CLI
## The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/longv/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/longv/google-cloud-sdk/path.zsh.inc'; fi
## The next line enables shell command completion for gcloud.
# if [ -f '/Users/longv/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/longv/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

neofetch
