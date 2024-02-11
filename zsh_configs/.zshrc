if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Configs
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=2
HIST_STAMPS="mm/dd/yyyy"

plugins=(asdf git z colored-man-pages common-aliases fzf gitignore jsontools zsh-interactive-cd history sudo zsh-autosuggestions zsh-syntax-highlighting poetry)

source $ZSH/oh-my-zsh.sh
# ZSH End

# Powerlevel 10K Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases Start
alias ls="exa --icons"
alias la="exa --icons -a"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vzsh="nvim ~/.zshrc"
alias pi="ssh myleshen@192.168.0.252"
alias dell="ssh myleshen@192.168.0.5"
alias zettle="nvim $HOME/Zettelkasten"
# Aliases End

# NVM Start
export NVM_DIR="$HOME/.nvm"                        
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"
# NVM End

# HomeBrew Start
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH=/usr/local/bin:$PATH
# HomeBrew End
export PATH=/home/myleshen/.local/bin:$PATH
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# Setup GOROOT for Golang
. ~/.asdf/plugins/golang/set-env.zsh

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


# Rust Source
export PATH=$HOME/.cargo/bin:$PATH

# bun completions
[ -s "/home/myleshen/.bun/_bun" ] && source "/home/myleshen/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
