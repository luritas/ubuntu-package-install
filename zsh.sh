#!/bin/bash
echo "Installing zsh..."
echo "sudo apt install zsh"
sudo apt install -y zsh

echo "Make it your default shell"
sudo chsh $USER -s $(which zsh)
