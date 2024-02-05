# nvim
``` # install brew and ag
brew install nvim
pip3 install --user pynvim
brew install ag
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

```
# setting nvim
cd ~/.config
git clone git@github.com:Shougo/dein.vim.git
ln -s $(which nvim) ./bin/vim
echo 'PATH="$HOME/.config/nvim/bin:$PATH"' >> ~/.zshrc
```

```
# install nvim plugins
# after open nvim, 
:call dein#install()
```
