# ZSH Configs
export ZSH="/home/myleshen/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=2
HIST_STAMPS="mm/dd/yyyy"

plugins=(git z colored-man-pages common-aliases fzf gitignore jsontools zsh-interactive-cd history sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# ZSH End

# Powerlevel 10K Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases Start
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vzsh="nvim ~/.zshrc"
# Aliases End


# Conda Start
__conda_setup="$('/home/myleshen/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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
# Conda End

# NVM Start
export NVM_DIR="$HOME/.nvm"                        
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"
# NVM End

# HomeBrew Start
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# HomeBrew End
