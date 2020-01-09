rm $HOME/.tmux.conf
ln -s $(pwd)/tmux_config $HOME/.tmux.conf
ls -l $HOME/.tmux.conf

rm -r $HOME/.bin
ln -s $(pwd)/bin $HOME/.bin
ls -l $HOME/.bin

rm $HOME/.config/gtk-3.0/gtk.css
ln -s $(pwd)/gtk.css $HOME/.config/gtk-3.0/gtk.css
ls -l $HOME/.config/gtk-3.0/gtk.css

rm $HOME/.vimrc
ln -s $(pwd)/vimrc $HOME/.vimrc
ls -l $HOME/.vimrc

rm $HOME/.muttrc
ln -s $(pwd)/muttrc $HOME/.muttrc
ls -l $HOME/.muttrc

rm $HOME/.aliases
ln -s $(pwd)/aliases $HOME/.aliases
ls -l $HOME/.aliases
