# vim
mkdir -p ~/.vim/colors
git clone https://github.com/w0ng/vim-hybrid.git ~/Downloads/vim-hybrid
cp ~/Downloads/vim-hybrid/colors/hybrid.vim ~/.vim/colors

# bashrc
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '" >> ~/.bashrc
echo "export EDITOR=vim"
echo "export LANG=ja_JP.UTF-8"

# pyenv install
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo '##-------- pyenv settings --------##' >> ~/.bashrc
echo 'export PYENV_HOME=$HOME/.pyenv' >> ~/.bashrc
echo 'export PATH=$PATH:$PYENV_HOME/bin' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# anaconda install
eval "$(~/.pyenv/bin/pyenv init -)"
~/.pyenv/bin/pyenv install anaconda3-5.3.1
~/.pyenv/bin/pyenv global anaconda3-5.3.1

# Keras Tensorflow-gpu install
conda update -y conda
conda install -y cudatoolkit==9.0
conda install -y tensorflow-gpu==1.9.0
conda install -y keras==2.2.4

