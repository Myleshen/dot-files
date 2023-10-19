if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Configs
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=2
HIST_STAMPS="mm/dd/yyyy"

plugins=(asdf git z colored-man-pages common-aliases fzf gitignore jsontools zsh-interactive-cd history sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# ZSH End

# Powerlevel 10K Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases Start
alias ls="exa --icons"
alias la="exa --icons -la"
alias v="lvim"
alias vi="lvim"
alias vim="lvim"
alias vzsh="lvim ~/.zshrc"
alias pi="ssh myleshen@192.168.0.252"
alias dell="ssh myleshen@192.168.0.5"
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
