#!/usr/bin/env bash

# installing nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

# installing node
nvm install lts/gallium
npm i -g npm

# installing zx, an alternative to bash scripting
npm i -g zx
