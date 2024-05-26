# My Custom Terminal configs

## Install zsh

Install zsh from your distro's package manager

## Install oh-my-zsh

Get it by

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Note: Install curl on your system

Then restart zsh to check if oh-my-zsh is actually running on the terminal

## Then download powerlevel10k

For oh-my-zsh installation 

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Download a nerd font for all the objects to properly render
I'm using MesloNGF NF font

## Download syntax highlighting for oh-my-zsh

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Now open the .zshrc file, scroll down to plugins and add

``` 
plugins = ( [other--plugins] zsh-syntax-highlighting)
```
