#!/bin/bash
mkdir -p ~/.config/nvim/vim-plug
mkdir -p ~/.config/nvim/plug-config
mkdir -p ~/.config/nvim/ftplugin
mkdir -p ~/.tmux/theme

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
