#!/bin/bash

echo "Installing docker..."
echo
brew cask install docker
brew cask install kitematic


echo "Installing tools..."
echo
brew install bash
brew cask install spectacle
brew cask install postman
brew cask install gimp

echo "Installing lang..."
echo
brew install python3
brew install go
brew install glide
brew install node

#NVM
brew install nvm
source $(brew --prefix nvm)/nvm.sh

#SBT and SCALA
#brew install sbt scala

echo "Homebrew: Finished additional setup."
echo
