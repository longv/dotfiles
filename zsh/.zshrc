# Path to your oh-my-zsh installation.
export ZSH="/Users/longv/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim="nvim"
alias vi="nvim"

# PATH setup
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin
# go
export PATH=/usr/local/go/bin:~/go/bin:$PATH
# jenv to manage Java versions
export PATH=$HOME/.jenv/bin:$PATH
eval "$(jenv init -)"
# pipenv
PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
export PATH=$(python3 -m site --user-base)/bin:$PATH
# k8s
export KUBECONFIG="/Users/longv/.lima/k8s/copied-from-guest/kubeconfig.yaml"
# gcloud CLI
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/longv/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/longv/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/longv/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/longv/google-cloud-sdk/completion.zsh.inc'; fi
