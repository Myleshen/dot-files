# First Take on creating DotFiles for Linux

>
> Commands to execute to get the dotfiles up for .zshrc
>

## Basic Setup

## Run command to setup zshrc

ln -s .config/zsh_configs/.zshrc .zshrc

## Install Oh-My-Zsh

```shell
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null
```

## Zsh Plugins

sudo apt-get install -y fzf  
git clone <https://github.com/zsh-users/zsh-autosuggestions.git> $ZSH/plugins/zsh-autosuggestions  
git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> $ZSH/plugins/zsh-syntax-highlighting

## Neovim

```shell
brew install neovim
```

Todo's

- Neovim
- tmux
