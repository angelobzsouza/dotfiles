#!/bin/bash
# VSCode

# IntelliJ

# Install ZSH
brew install zsh
# Install fonts for ZSH
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
# Link .zshrc to personal file
rm ~/.zshrc && echo ".zshrc successfully removed"
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc && echo "symbol link to .zshrc created"
# Downloads plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Use downloaded config
source ~/.zshrc

# Personalize Iterm
git clone https://github.com/dracula/iterm.git


# Install Spotify
brew install --cask spotify