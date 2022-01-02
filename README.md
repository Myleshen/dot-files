# First Take on creating DotFiles for Linux
Commands to execute to get the dotfiles up for .zshrc

# Basic Setup

# Run command to setup zshrc
ln -s .config/zsh_configs/.zshrc .zshrc

# Zsh Plugins
sudo apt-get install -y fzf
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting

#Neovim


Todo's
- Neovim
- tmux
