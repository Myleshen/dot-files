# ZSH Configs
export ZSH="/home/myleshen/.oh-my-zsh"
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=2
HIST_STAMPS="mm/dd/yyyy"

plugins=(git z copyfile colored-man-pages common-aliases fzf gitignore jsontools zsh-interactive-cd history zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# ZSH End

# Aliases Start
alias v="nvim"
alias vi="nvim"
alias config_zsh="nvim ~/.zshrc"
alias source_zsh="source ~/.zshrc"
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


# Spaceship Prompt
# Order
SPACESHIP_PROMPT_ORDER=(
	host
	dir
	git
	char
)
SPACESHIP_RPROMPT_ORDER=(
	exit_code
	exec_time
	node
	docker
	conda
	gradle
	maven
	jobs
	battery
	time
)
# Colour
TIME_COLOUR=WHITE

# Prompt
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true

# Directory
SPACESHIP_DIR_PREFIX=""

# Time
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT=%T::%D
SPACESHIP_TIME_COLOR=TIME_COLOR
SPACESHIP_TIME_PREFIX="Now:"
SPACESHIP_TIME_SUFFIX=""
# User
SPACESHIP_USER_SHOW=always

# Battery
SPACESHIP_BATTERY_SHOW=always

# Exit Code
SPACESHIP_EXIT_CODE_SHOW=true
# Spaceship Prompt End

# HomeBrew Start
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# HomeBrew End
