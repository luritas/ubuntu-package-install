#!/bin/bash

echo "Installing zsh..."
echo "sudo apt install zsh"
sudo apt install zsh

echo "Make it your default shell"
chsh -s $(which zsh)

echo "To see details, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH"

echo "Get oh-my-zsh installer..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "To active plugins, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins"

echo "frequently used plugins"
echo "git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux ubuntu zsh-navigation-tools"

echo "Most use"
echo "git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux zsh-navigation-tools tmuxinator vi-mode z"

echo "Only ubuntu"
echo "command-not-found"
