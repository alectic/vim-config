### Setup
```
mv -v ~/.vim ~/.vim_backup
mv -v ~/.vimrc ~/.gvimrc ~/.vim_backup/
git clone https://github.com/alectic/vim-config ~/.vim
vim +PlugInstall +qall
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

### Update vim scripts / plugins
```
vim +PlugUpdate +qall
```

### Update vim-plug
```
vim +PlugUpgrade +qall
```
