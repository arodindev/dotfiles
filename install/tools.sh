#!/bin/bash

# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm get-docker.sh

# add docker user so we dont need sudo
sudo usermod -aG docker $USER
newgrp docker
sudo chown $USER /var/run/docker.sock

# install homebrew
sudo apt update
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# sdkman
curl -s "https://get.sdkman.io" | zsh

# libssl
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
sudo apt-get update
sudo apt-get install build-essential \
    libssl1.1 libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev curl \
    libncursesw5-dev xz-utils tk-dev libxml2-dev \
    libxmlsec1-dev libffi-dev liblzma-dev
rm libssl1.1_1.1.0g-2ubuntu4_amd64.deb

# hey
sudo apt install -y curl hey

# kubectl
brew install kubectl

# kubectx
brew install kubectx

# minikube
brew install minikube

# helm
brew install helm

# fluxcd
brew install fluxcd/tap/flux

# k9s
brew install k9s

# terraform
brew install terraform

# pyenv
brew install pyenv

# pyenv virtualenv
brew install pyenv-virtualenv