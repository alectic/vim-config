### Setup
```
mv -v ~/.vim ~/.vim_backup
mv -v ~/.vimrc ~/.gvimrc ~/.vim_backup/
git clone https://github.com/alectic/vim-config.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```
for Go autocompletion daemon. Install gocode:
```
go get github.com/nsf/gocode
```
use goimports instead of gofmt
```
go get code.google.com/p/go.tools/cmd/goimports
```
ctags support for Go:
```
go get github.com/jstemmer/gotags
```
lint support for Go:
```
go get github.com/golang/lint
```
python autocompletion
```
pip install jedi --user
```

### Update vim scripts / plugins
```
vim +PluginUpdate +qall
```
