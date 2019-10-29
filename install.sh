#!/usr/bin/env bash

# Checking if Homebrew is installed.

if ! which brew > /dev/null; then
echo "Homebrew is not installed. Installing now..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
echo "Homebrew already installed."
fi

# List of useful tools

toolslist=(
    bash
    carthage
    cocoapods
    git
    swiftgen
    swiftlint
    telnet
    wget
    xcodegen
    zsh
)
brew install "${toolslist[@]}"

toolscasklist=(
    fastlane
)
brew cask install "${toolscasklist[@]}"

# List of usefull apps

appslist=(
    android-studio
    charles
    docker
    dropbox
    firefox
    flux
    google-chrome
    postman
    slack
    sourcetree
    station
    visual-studio-code
    vlc
    zoomus
)
brew cask install "${appslist[@]}"