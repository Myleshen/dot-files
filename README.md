# First Take on creating DotFiles for Linux

>
> Commands to execute to get the dotfiles up for .zshrc
>

## Basic Setup

### Install Zsh

```shell
sudo apt install zsh
```

### Install Oh-My-Zsh

```shell
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Run command to setup zshrc

```shell
rm -f ~/.zshrc && ln -s .config/zsh_configs/.zshrc .zshrc
```
### Install Powerlevel10k Theme

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### Zsh Plugins

```shell
sudo apt-get install -y fzf  
git clone <https://github.com/zsh-users/zsh-autosuggestions.git> $ZSH/plugins/zsh-autosuggestions  
git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> $ZSH/plugins/zsh-syntax-highlighting
```


### Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null
```

### MySQL

```shell
brew install mysql@5.7
```

### Pip3

```shell
sudo apt-get install pip3
```

### Neovim

```shell
brew install neovim
```

### Neovim Python Plugin

```shell
pip3 install neovim
```
### Tmux

```shell
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
>
> Inside tmux for the first time use (prefix) <Ctrl+Space> + I to install all the plugins
> Reference: https://tmuxcheatsheet.com/ 

Todo's
