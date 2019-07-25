#!/bin/bash
BRC="$HOME/.bashrc"
AIL="$HOME/.bash_aliases"
DOTFILES="$HOME/dotfiles/WSL"

<<CO
# Environment Variables
echo "[*] Write environment variables"
echo "##--------  Windows Information  ---------##" >> $BRC
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
echo -e "[!] Success writing environment variables\n"
echo "[*] Copy some profiles"
cp "$DOTFILES/.bash_aliases $HOME"
cp "$DOTFILES/.tmux.conf $HOME"
cp "$DOTFILES/.gitconfig $HOME"
echo "[!] Success copy"
# Update apt and Install packages
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git vim less htop make g++ zip cmake man net-tools bash-completion tmux gcc
CO

<<CO
# vim 
if [ -e "~/.vim/colors"  ]; then
  echo "[*] Made directory '~/.vim/colors'"
else
  echo "[*] Make directory '~/.vim/colors' "
  mkdir -p ~/.vim/colors
  echo -e "[!] Success making directory\n"
fi
if [ -e "~/.vim/colors/hybrid.vim" ]; then
  echo "[*] Downloaded hybrid.vim"
else
  echo "[*] Download vim's colorscheme 'hybrid.vim' "
  git clone https://github.com/w0ng/vim-hybrid.git ~/vim-hybrid
  cp ~/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
  echo -e "[!] Success downloading hybrid.vim\n"
fi
CO

<<CO
# python
if [ -e "~/.pyenv" ]; then
  echo "[*] Downloaded pyenv"
else
  echo "[*] Download pyenv for python"
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  echo "Add environment variable for pyenv"
  echo '##-------- pyenv settings --------##' >> $BRC
  echo 'export PYENV_HOME=$HOME/.pyenv' >> $BRC
  echo 'export PATH=$PATH:$PYENV_HOME/bin' >> $BRC
  echo 'eval "$(pyenv init -)"' >> $BRC
  echo -e "[!] Success downloading pyenv\n"
fi
CO

