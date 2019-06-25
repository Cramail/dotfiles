# bashrc
echo "PS1='\${debian_chroot:+(\$debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\W\[\033[00m\]\$ '" >> ~/.bashrc

# vim
if [ -e "~/.vim/colors" ] ; then
  echo "Create a directory ~/.vim/colors"
  mkdir -p ~/.vim/colors
fi
if [ -e "~/.vim/colors/hybrid.vim" ]; then
  echo "Download hybrid.vim for vim colorscheme"
  git clone https://github.com/w0ng/vim-hybrid.git ~/vim-hybrid
  cp ~/vim-hybrid/colors/hybrid.vim ~/.vim/colors
fi

# pyenv install
if [ -e "~/.pyenv" ] ; then
  echo "Download pyenv for python"
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  echo "Add environment variable for pyenv"
  echo '##-------- pyenv settings --------##' >> ~/.bashrc
  echo 'export PYENV_HOME=$HOME/.pyenv' >> ~/.bashrc
  echo 'export PATH=$PATH:$PYENV_HOME/bin' >> ~/.bashrc
  echo 'eval "$(pyenv init -)"' >> ~/.bashrc
fi

# anaconda install
echo "Install Anaconda"
eval "$(~/.pyenv/bin/pyenv init -)"
~/.pyenv/bin/pyenv install anaconda3-5.3.1
~/.pyenv/bin/pyenv global anaconda3-5.3.1

# Keras Tensorflow-gpu install
echo "Update conda and install some packages"
conda update -y conda
conda install -y cudatoolkit==9.0
conda install -y tensorflow-gpu==1.9.0
conda install -y keras==2.2.4

