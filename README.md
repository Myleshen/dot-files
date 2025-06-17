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

# Create a sym link to /usr/local/bin to make sure compatability exists with both Macos & Linux
ln -s $(where tmux) /usr/local/bin/tmux

```
<<<<<<< Updated upstream
>
> Inside tmux for the first time use (prefix) <Ctrl+Space> + I to install all the plugins
> Reference: <https://tmuxcheatsheet.com/>

### Stow

- Simple ln

```shell
brew install stow

stow . -t ~/.config/ # Run this command in the root directory of this project to create symlink for all the apps to the .config folder
```

### BatCat

- Cat with Colours

```shell
brew install bat #Need to see if it is bat / batcat in linux
add alias cat='batcat' # If it is bat then no issues, but if not need to add it in using the if condition based on the OS
```
=======
>>>>>>> Stashed changes

### Playerctl

- This is used to control the audio output of the system

```shell
sudo apt install playerctl -y

### Polybar

- This is used to display the system information

```shell
sudo apt install polybar -y
```

> Inside tmux for the first time use prefix + I to install all the plugins
> Tmux config reload: prefix + r
> Reference: <https://tmuxcheatsheet.com/>

> Note: Tried kanata for a while and it seems it is not working well for my usecases, might need to look into it again after sometime

Todo's:

- Document other applications that are required
-
