#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    echo 'Install Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


brew update
brew tap homebrew/cask-versions


# Install proper terminal - iterm2
echo "Installing iTerm2..."
echo
brew cask install iterm2

echo "Installing editor..."
echo
brew install vim

echo "Homebrew: Finished initial setup."
echo

exit 0
