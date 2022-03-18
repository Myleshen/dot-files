# First Take on creating DotFiles for Linux

>
> Commands to execute to get the dotfiles up for .zshrc
>

## Basic Setup

### Install Oh-My-Zsh

```shell
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Run command to setup zshrc

```shell
ln -s .config/zsh_configs/.zshrc .zshrc
```

### Install Spaceship Prompt

```shell
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

### Install Rclone

```shell
curl https://rclone.org/install.sh | sudo bash
```

### Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null
```

### Mysql

```shell
brew install mysql@5.7
```

### Pip3

```shell
sudo apt-get install pip3
```

### Zsh Plugins

sudo apt-get install -y fzf  
git clone <https://github.com/zsh-users/zsh-autosuggestions.git> $ZSH/plugins/zsh-autosuggestions  
git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> $ZSH/plugins/zsh-syntax-highlighting

### Neovim

```shell
brew install neovim
```

### Neovim Python Plugin

```shell
pip3 install neovim
```

Todo's

- tmux