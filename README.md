### Setup
```
mv -v ~/.vim ~/.vim_backup
mv -v ~/.vimrc ~/.gvimrc ~/.vim_backup/
git clone https://github.com/alectic/vim-config ~/.vim
cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

### Update vim scripts / plugins
```
vim +PluginUpdate +qall
```
