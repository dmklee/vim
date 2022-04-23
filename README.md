## how to setup
1. Install `vim`
```
sudo apt install vim
```
2. Download `.vimrc` file.  You should make a copy of an existing `.vimrc` if applicable.
```
wget https://raw.githubusercontent.com/dmklee/vim/master/.vimrc -P ~/
```
3. Setup Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
4. Open `.vimrc` with `vim`
```
vim .vimrc
```
5. Install Plugins with Vundle by running `:PluginInstall`
6. Source `.vimrc` file by running `:source %`

