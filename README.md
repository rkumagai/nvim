# nvim

```
brew install neovim
pip3 install --user pynvim
brew install ag
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```


```
ln -s $(which nvim) ./bin/vim
echo 'PATH="$HOME/.config/nvim/bin:$PATH"' >> ~/.zshrc
```

```
# Dein install
# refs. https://github.com/Shougo/dein.vim#quick-start
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# Open nvim
:call dein#install()
```
