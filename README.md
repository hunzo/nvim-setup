# My Neovim setup for WSL
## exec script
```bash
./00-install-software.sh
./01-setup-directory.sh
```
# Install Manual
## Update Ubuntu
```bash
sudo apt update -y && sudo apy upgrade -y
sudo apt install unzip
```
## Golang
```bash
curl -OL https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
tar xfz go1.17.5.linux-amd64.tar.gz
sudo mv go /usr/local
sudo ln /usr/local/go/bin/go /usr/local/bin/go
export PATH=$PATH:$HOME/go/bin
```
## Nvm
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

. ~/.nvm/nvm.sh
. ~/.bashrc

nvm install --lts
```
## Yarn
```bash
npm install --global yarn
```
## Python
```bash
sudo apt install python3-pip -y
sudo pip3 install pipenv
python3 -m pip install --user --upgrade pynvim
python3 -m pip install --user --upgrade pyright
```
### Install Neovim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/bin
sudo ln -s /usr/bin/nvim.appimage /usr/bin/nvim
```
### Create Directory
```bash
mkdir -p ~/.config/nvim/vim-plug
mkdir -p ~/.config/nvim/plug-config
mkdir -p ~/.config/nvim/ftplugin
mkdir -p ~/.tmux/theme
```
### Copy Configuration to nvim config
```shell
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
```
### Install Tmux Plugin Manager
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
### Install vim-plug for Neovim
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### PlugInstall on nvim  via `vim-plug`
```vim
:PlugInstall
```
### GoInstallBinaries
```vim
:GoInstallBinaries
```
### NerdFont 
* Download [`here`](https://www.nerdfonts.com/font-downloads)
