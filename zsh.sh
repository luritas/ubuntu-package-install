#!/bin/bash
echo "Installing zsh..."
echo "sudo apt install zsh"
sudo apt install -y zsh

echo "Make it your default shell"
sudo chsh $USER -s $(which zsh)

echo ""
echo "frequently used plugins"
echo "(git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux ubuntu zsh-navigation-tools)"
echo ""
echo "Most use"
echo "(git bundler dotnev rake ruby autoenv aws branch common-aliases fzf gitignore laravel pip python tmux zsh-navigation-tools tmuxinator vi-mode z)"
echo ""
echo "Only ubuntu"
echo "command-not-found"
