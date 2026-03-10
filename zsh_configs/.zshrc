# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/Users/myleshen/.oh-my-zsh/custom/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Configs
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=2
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
HIST_STAMPS="mm/dd/yyyy"
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

plugins=(git colored-man-pages common-aliases gitignore jsontools zsh-interactive-cd history sudo zsh-autosuggestions zsh-syntax-highlighting)

# Shell Variables
export EDITOR=nvim
export KUBE_EDITOR=nvim
export K9S_EDITOR=nvim

# Language Support
export LC_CTYPE=UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh
# ZSH End

# Powerlevel 10K Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases Start
alias ls="eza --color=always --git --icons=always"
alias la="ls -la"
alias cd="z"
alias cat="bat"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vzsh="nvim ~/.zshrc"
alias pi="ssh myleshen@192.168.0.252"
alias rog="ssh root@192.168.0.200"
alias zettle="nvim $HOME/Zettelkasten"
alias lg="lazygit"
alias lssh="lazyssh"
alias lc="lazycontainer"
# Aliases End

# Local Bin PATH
export PATH="$HOME/.local/bin":$PATH

# HomeBrew Start
# Added for macos
if [[ "$OSTYPE" == "darwin"* ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
export PATH=/usr/local/bin:$PATH
# HomeBrew End

# bat
export BAT_THEME="Catppuccin Macchiato"

# fzf
eval "$(fzf --zsh)"
fpath+=${ZDOTDIR:-~}/.zsh_functions

if [[ ! "$OSTYPE" == "darwin"* ]] then
  export FZF_BASE="/home/linuxbrew/.linuxbrew/bin/fzf"
fi

# source ASDF
# Installed using AUR
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# Conda Init
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
# . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"  # commented out by conda initialize
    else
# export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"  # commented out by conda initialize
    fi
fi
unset __conda_setup
# Conda End

# Rust Source
if [[ ! "$OSTYPE" == "darwin"* ]] then
  export PATH=$HOME/.cargo/bin:$PATH
  . "$HOME/.cargo/env"
fi

# NVM Start
# Added for macos
if [[ "$OSTYPE" == "darwin"* ]] then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
else
  export NVM_DIR="$HOME/.nvm"
    [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"
fi
# NVM End

# Neovim PATH
export PATH=$HOME/local/nvim/bin:$PATH

# Custom Scripts
# The reason for adding this in the first is to use my scripts rather than the ones builtin if collision occurs
export PATH="$HOME/scripts:$PATH"

if [[ "$OSTYPE" == "darwin"* ]] then
  export JAVA_HOME="$(/usr/libexec/java_home)"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fpath+=${ZDOTDIR:-~}/.zsh_functions
