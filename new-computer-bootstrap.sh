#!/usr/bin/env bash

brew install direnv;
brew install jq;
brew install yq;
brew install gh;

brew install derailed/k9s/k9s

brew tap gdubw/gng
brew install gng

gh auth login;

curl -s "https://get.sdkman.io" | bash