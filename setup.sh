#!/bin/bash

rm $HOME/.bashrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ls -l $HOME/.bashrc

rm $HOME/.Xresources
ln -s $(pwd)/xresources $HOME/.Xresources
ls -l $HOME/.Xresources

rm $HOME/.tmux.conf
ln -s $(pwd)/tmux_conf $HOME/.tmux.conf
ls -l $HOME/.tmux.conf

rm -r $HOME/.bin
ln -s $(pwd)/bin $HOME/.bin
ls -l $HOME/.bin

rm $HOME/.vimrc
ln -s $(pwd)/vimrc $HOME/.vimrc
ls -l $HOME/.vimrc

rm $HOME/.aliases
ln -s $(pwd)/aliases $HOME/.aliases
ls -l $HOME/.aliases

rm $HOME/.profile
ln -s $(pwd)/profile $HOME/.profile
ls -l $HOME/.profile
