#!/bin/bash

# 環境
ENV=WSL

# コマンド名を取得
CMDNAME=`basename $0`

# FLAG
GET_VIM_CS=false
GET_PYENV=false

usage_exit() {
    echo "Usage: $CMDNAME [-h (help)], [-p (pyenv)], [-v (vim_cs)]"
    exit
}

# '$#' : args
# 引数処理
while getopts ":hpv" OPT
do
    case $OPT in
        h)      usage_exit
                ;;
        p)      GET_PYENV=true
                ;;
        v)      GET_VIM_CS=true
                ;;
        \?)     usage_exit
                ;;
    esac
done

# apt update
sudo apt -y update 
sudo apt -y upgrade

# install commands
sudo apt -y install less zip vim htop bash-completion
sudo apt -y install net-tools 
sudo apt -y install gcc g++ cmake gnuplot
sudo apt -y install git

# get profiles
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '" >> ~/.bashrc
git clone https://github.com/Cramail/dotfiles.git ~/
cp "~/dotfiles/${ENV}/.bash_aliases" ~/.bash_aliases
cp "~/dotfiles/${ENV}/.vimrc" ~/.vimrc

# get pyenv
if $GET_PYENV ; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    echo '##-------- pyenv settings --------##' >> ~/.bashrc
    echo 'export PYENV_HOME=$HOME/.pyenv' >> ~/.bashrc
    echo 'export PATH=$PATH:$PYENV_HOME/bin' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
fi

# get hybrid fot vim color scheme 
if $GET_VIM_CS ; then
    mkdir -p ~/.vim/colors
    git clone https://github.com/w0ng/vim-hybrid.git ~/vim-hybrid
    cp ~/vim-hybrid/colors/hybrid.vim ~/.vim/colors
fi