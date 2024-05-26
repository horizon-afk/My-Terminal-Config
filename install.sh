#!/bin/bash

echo "Checking if zsh is installed"

if command -v zsh >/dev/null 2>&1; then
	echo "zsh is installed. Moving on."

else
	echo "zsh is not installed. Please install zsh and run this script again."
	exit 1
fi

echo ""
echo "Downloading oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ""
echo "Downloading zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo ""
echo "Copying the custom .zshrc folder to home directory"
cp .zshrc ~/.zshrc

echo ""
