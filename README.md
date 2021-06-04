## how to setup
0. Install `vim`
```
sudo apt install vim
```
1. Clone this repo
2. Move `.vimrc` to base directory
```
cp vim/.vimrc ./
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

