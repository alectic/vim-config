### Setup

Make a backup of vim config, if there is one.
```
mv -v ~/.vim ~/.vim_backup
mv -v ~/.vimrc ~/.gvimrc ~/.vim_backup/
```

Clone config into ~/.vim and make the symlinks.
```
git clone https://github.com/alexdreptu/vim-config ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

[vim-plug](https://github.com/junegunn/vim-plug) and all the plugins will be automatically installed when vim starts for the first time.

### Update vim scripts / plugins
```
vim +PlugUpdate +qall
```

### Update vim-plug
```
vim +PlugUpgrade +q
```
