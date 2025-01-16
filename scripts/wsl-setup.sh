#!/bin/bash

# Update ubuntu
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y curl unzip zsh git build-essential

# Install fast-node-manager(fnm)
curl -fsSL https://fnm.vercel.app/install | bash

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh

# Install bun
curl -fsSL https://bun.sh/install | bash

# Install github cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y

# Setup git
git config --global user.email "sajayprakashk@gmail.com"
git config --global user.name "Sajay Prakash"
git config --global init.defaultBranch main

echo "Setup complete!"
