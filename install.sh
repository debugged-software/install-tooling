#!/usr/bin/env bash

which -s brew

if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

brew install --cask $(curl https://raw.githubusercontent.com/debugged-software/install-tooling/main/casks.txt)
brew install $(curl https://raw.githubusercontent.com/debugged-software/install-tooling/main/formulae.txt)

# enable git lfs
git lfs install