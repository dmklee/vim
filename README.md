## Vim Setup
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

## Zsh Setup
1. Install `zsh`
```
sudo apt install zsh
```
2. Set zsh as default shell (you may need to restart computer for this to take effect).
```
chsh -s /bin/zsh
```
3. Download `.zshrc` file.
```
wget https://raw.githubusercontent.com/dmklee/vim/master/.zshrc -P ~/
```
4. Re-open terminal and run:
```
zplug install
```
This will prompt PowerLevel configuration wizard. 

## Tmux Setup
1. Install `tmux`
```
sudo apt install tmux
```
2. Download `.tmux.conf` file.  You should make a copy of an existing `.tmux.conf` if applicable.
```
wget https://raw.githubusercontent.com/dmklee/vim/master/.tmux.conf -P ~/
```
