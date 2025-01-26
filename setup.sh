#!/bin/zsh

## HOMEBREW ##
# install homebrew
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install formulas
xargs brew install < homebrew/formulas.txt
# install casks
xargs brew install --cask < homebrew/casks.txt

## ZSH ##
git clone git@github.com:WadeSeidule/zshconfig.git $HOME/.zshconfig
echo "export ZSH_CONFIG_DIR=$HOME/.zshconfig" >> $HOME/.zshrc
echo "export PATH=$HOME/.zshconfig:\$PATH" >> $HOME/.zshrc
source $HOME/.zshrc
zc setup
