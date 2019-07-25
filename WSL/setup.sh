#!/bin/bash
BRC="$HOME/.bashrc"
AIL="$HOME/.bash_aliases"
DOTFILES="$HOME/dotfiles/WSL"

<<BASH
# Environment Variables
echo "[*] Write environment variables"
echo -e "\n##--------  Windows Information  ---------##" >> $BRC
echo "WINNAME=telmi" >> $BRC
echo "DESKTOP=/mnt/c/Users/telmi/Desktop" >> $BRC
echo "DOWNLOADS=/mnt/c/Users/telmi/Downloads" >> $BRC
echo -e "CDRIVE=/mnt/c/\n" >> $BRC
echo "##-------- Environment Variables ---------##" >> $BRC
echo "PS1='\${debian_chroot:+(\$debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\W\[\033[00m\]\$ '" >> $BRC
echo "export PAGER=less" >> $BRC
echo "export EDITOR=vim" >> $BRC
echo "export LC_CTYPE=ja_JP.UTF-8" >> $BRC
echo -e "export LANG=ja_JP.UTF-8\n" >> $BRC
echo "[!] Success writing environment variables"
echo "[*] Copy some profiles"
cp $DOTFILES/.vimrc $HOME/
cp $DOTFILES/.bash_aliases $HOME/
cp $DOTFILES/.tmux.conf $HOME/
cp $DOTFILES/.gitconfig $HOME/
echo "[!] Success copy"
# Update apt and Install packages
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git vim less htop make g++ zip cmake man net-tools bash-completion tmux gcc build-essential libssl-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl libedit-dev
BASH

<<VIM
# vim 
if [ -e $HOME/.vim/colors ]; then
  echo "[*] Already make directory '$HOME/.vim/colors'"
else
  echo "[*] Make directory '$HOME/.vim/colors' "
  mkdir -p $HOME/.vim/colors
  echo "[!] Success making directory"
fi
if [ -e $HOME/.vim/colors/hybrid.vim ]; then
  echo "[!] Already exist hybrid.vim"
else
  echo "[*] Download vim's colorscheme 'hybrid.vim' "
  git clone https://github.com/w0ng/vim-hybrid.git ~/vim-hybrid
  cp ~/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
  echo "[!] Success download hybrid.vim"
fi
VIM

<<PYENV
# python
if [ -e $HOME/.pyenv ]; then
  echo "[!] Already exist pyenv"
else
  echo "[*] Download pyenv for python"
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  echo "Add environment variable for pyenv"
  echo -e '\n##-------- pyenv settings --------##' >> $BRC
  echo 'export PYENV_HOME=$HOME/.pyenv' >> $BRC
  echo 'export PATH=$PATH:$PYENV_HOME/bin' >> $BRC
  echo 'eval "$(pyenv init -)"' >> $BRC
  echo "[!] Success download pyenv"
fi
PYENV

