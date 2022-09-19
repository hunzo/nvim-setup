#!/bin/bash
# Update
sudo apt update -y && sudo apt upgrade -y
sudo apt install unzip

#Golang
curl -OL https://golang.org/dl/go1.19.1.linux-amd64.tar.gz
tar xfz go1.19.1.linux-amd64.tar.gz
sudo mv go /usr/local
sudo ln /usr/local/go/bin/go /usr/local/bin/go

#add in .bashrc or .bash_profile
# export PATH=$PATH:$HOME/go/bin
 
echo 'export PATH=$PATH:$HOME/go/bin:$HOME/.local/bin' >> ~/.bashrc
echo 'set -o vi' >> ~/.bashrc

echo "show_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}" >> ~/.bashrc

echo 'export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(show_git_branch)\[\e[00m\] $ "' >> ~/.bashrc

# Nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

. ~/.nvm/nvm.sh
. ~/.bashrc

nvm install --lts

#yarn
npm install --global yarn

## Python
sudo apt install python3-pip -y
sudo pip3 install pipenv
python3 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pyright

### Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/bin
sudo ln -s /usr/bin/nvim.appimage /usr/bin/nvim

### Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### Install vim-plug on neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
### Create Directory
mkdir -p ~/.config/nvim/vim-plug
mkdir -p ~/.config/nvim/plug-config
mkdir -p ~/.config/nvim/ftplugin
mkdir -p ~/.tmux/theme

### Copy Config
cp config/nvim/init.vim ~/.config/nvim

cp config/nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug

cp config/nvim/plug-config/coc.vim ~/.config/nvim/plug-config
cp config/nvim/plug-config/keys.vim ~/.config/nvim/plug-config
cp config/nvim/plug-config/nerdtree.vim ~/.config/nvim/plug-config
cp config/nvim/plug-config/settings.vim ~/.config/nvim/plug-config
cp config/nvim/plug-config/colorscheme.vim ~/.config/nvim/plug-config
cp config/nvim/plug-config/golang.vim ~/.config/nvim/plug-config

cp config/nvim/coc-settings.json ~/.config/nvim/

cp config/nvim/ftplugin/python.vim ~/.config/nvim/ftplugin

cp tmux.conf ~/.tmux.conf
cp tmux/theme/airline_insert ~/.tmux/theme

tmux source ~/.tmux.conf
