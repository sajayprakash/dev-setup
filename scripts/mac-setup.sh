#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools
brew install neovim gh

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Install bun
curl -fsSL https://bun.sh/install | bash

# Install nvm and node LTS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install --lts
