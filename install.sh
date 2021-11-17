#!/usr/bin/env bash

which -s brew

if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

brew install --cask $(curl https://gist.githubusercontent.com/Choem/2da2579bdce2dff9ecb2160b2064c440/raw/casks.txt)
brew install $(curl https://gist.githubusercontent.com/Choem/2da2579bdce2dff9ecb2160b2064c440/raw/formulae.txt)
