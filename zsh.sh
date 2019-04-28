#!/bin/bash
echo "Installing zsh..."
echo "sudo apt install zsh"
sudo apt install -y zsh

echo "oh-my-zsh To see details, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH"

echo "To active plugins, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins"

echo "Get oh-my-zsh installer..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Make it your default shell"
sudo chsh $USER -s $(which zsh)

echo ""
echo "Installing syntax highlighter"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo ""
echo "Installing zsh auto-suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo ""

#https://github.com/junegunn/fzf
echo "Installing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install --key-bindings --completion --update-rc
echo "# Set fzf installation directory path" >> $HOME/.zshrc
echo "export FZF_BASE=$HOME/.fzf/install/dir" >> $HOME/.zshrc
echo "" >> $HOME/.zshrc
echo "# Uncomment the following line to disable fuzzy completion" >> $HOME/.zshrc
echo "# export DISABLE_FZF_AUTO_COMPLETION=\"true\"" >> $HOME/.zshrc
echo "" >> $HOME/.zshrc
echo "# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)" >> $HOME/.zshrc
echo "# export DISABLE_FZF_KEY_BINDINGS=\"true\"" >> $HOME/.zshrc
source ~/.zshrc

echo ""
echo "To active plugins, below link"
echo "https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins"

echo ""
echo "Most use"
echo "plugins=(git bundler dotenv rake ruby aws branch common-aliases fzf gitignore laravel pip python tmux zsh-navigation-tools tmuxinator vi-mode z zsh-autosuggestions zsh-syntax-highlighting)"
echo ""
echo "Only ubuntu"
echo "plugins=(... ubuntu command-not-found)"
echo ""
echo "for python"
echo "plugins=(... autoenv virtualenv virtualenvwrapper)"


