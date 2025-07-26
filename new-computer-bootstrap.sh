#!/usr/bin/env bash

brew install direnv;
brew install jq;
brew install yq;
brew install gh;
brew install php;
brew install docker; # Docker CLI
brew install colima; # Docker runtime
brew services start colima;

git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

brew install derailed/k9s/k9s # https://k9scli.io/topics/install/

brew tap gdubw/gng # https://github.com/gdubw/gng
brew install gng

gh auth login;

curl -s "https://get.sdkman.io" | bash