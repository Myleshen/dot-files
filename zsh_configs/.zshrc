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

plugins=(git colored-man-pages common-aliases fzf gitignore jsontools zsh-interactive-cd history sudo zsh-autosuggestions zsh-syntax-highlighting poetry)

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
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vzsh="nvim ~/.zshrc"
alias pi="ssh myleshen@192.168.0.252"
alias dell="ssh myleshen@192.168.0.5"
alias zettle="nvim $HOME/Zettelkasten"
alias tmux="tmux -u"
alias bloompull="/Users/mprab01/OneDrive/Learning/Scripts/gitpull.sh /Users/mprab01/Bloom/Repos"
# Aliases End

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
export BAT_THEME=tokyonight_night

# Use FD
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
} 

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}

# fzf
eval "$(fzf --zsh)"

if [[ ! "$OSTYPE" == "darwin"* ]] then
  source ~/Software/fzf-git.sh/fzf-git.sh
fi

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/myleshen/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/myleshen/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/myleshen/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/myleshen/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

fpath+=${ZDOTDIR:-~}/.zsh_functions

# asdf
if [[ ! "$OSTYPE" == "darwin"* ]] then
  . /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh
fi

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

# bun completions
[ -s "/home/myleshen/.bun/_bun" ] && source "/home/myleshen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
