#!/bin/zsh

echo "Getting homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Reloading terminal"
exec zsh

echo "Installing packages"

xcode-select --install

brew install --cask $(cat packages.txt)

echo "Everything should be done now install nvm version manager and yarn https://github.com/nvm-sh/nvm"