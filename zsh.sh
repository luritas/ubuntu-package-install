#!/bin/bash

echo "Installing zsh..."
echo "sudo apt install zsh"
sudo apt install -y zsh

echo "Make it your default shell"
sudo chsh $USER -s $(which zsh)

echo "To see details, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH"

echo "Get oh-my-zsh installer..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing syntax highlighter"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
echo "source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc                   

echo "Installing auto suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# 설정 후 적용
source ~/.zshrc

echo "To active plugins, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins"

echo ""
echo "frequently used plugins"
echo "(git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux ubuntu zsh-navigation-tools)"
echo ""
echo "Most use"
echo "(git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux zsh-navigation-tools tmuxinator vi-mode z)"
echo ""
echo "Only ubuntu"
echo "command-not-found"
