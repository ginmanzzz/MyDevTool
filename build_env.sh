#!/bin/bash

# Copy vimrc to home directory
cp ./vimrc $HOME/.vimrc
mkdir -p $HOME/.vim
cp ./coc-settings.json $HOME/.vim/coc-settings.json

# Update and install dependencies
apt update && apt upgrade -y
apt-get install git vim curl wget -y

# Install nvm
git clone https://github.com/nvm-sh/nvm.git ~/.nvm
cd ~/.nvm
git checkout v0.39.5

# Load nvm explicitly
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node.js
nvm install 16.20.0
nvm use 16.20.0
nvm alias default 16.20.0

# Persist nvm in bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc

# Reload nvm in current script session (not relying on .bashrc)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install vim-plug
git clone https://github.com/junegunn/vim-plug.git
mkdir -p ~/.vim/autoload
cp vim-plug/plug.vim ~/.vim/autoload/
rm -rf vim-plug

apt-get install clang clangd -y
