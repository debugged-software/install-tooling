#!/usr/bin/env bash

which -s brew

if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

brew install --cask $(curl https://github.com/debugged-software/install-tooling/blob/main/casks.txt)
brew install $(curl https://github.com/debugged-software/install-tooling/blob/main/formulae.txt)
