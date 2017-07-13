#!/bin/bash

# ask for password
sudo -v

# shell
read -p "Install zsh and shell (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install zsh
	sudo apt-get install curl
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# git
read -p "Install git (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install git
fi
 
# emacs
read -p "Install emacs (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install emacs24
fi

# visual studio code
read -p "Install VS Code (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo apt-get update
	sudo apt-get install code
fi

# node
read -p "Install Node (Y/y)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
	sudo apt-get install -y nodejs
fi
