#!/bin/bash

if [ -e ~/.pyenv ]; then
  if [ -e ~/.pyenv/versions/miniconda3-4.3.30 ]; then
    echo "[!] Already install miniconda3-4.3.30"
  else
    echo "[*] Begin install miniconda3-4.3.30"
    pyenv install miniconda3-4.3.30
    echo "[!] Success install miniconda3-4.3.30"
  fi
  pyenv global miniconda3-4.3.30
  pyenv rehash
  echo "[*] Begin install packages"
  pip install -U pip 
  pip install progressbar2 
  pip install beautifulsoup4 
  pip install requests 
  pip install nndownload
  pip install pathlib
  pip install img2pdf
  pip install pypdf2
  pip completion --bash >> $HOME/.profile
  echo "[!] Success install packages"
fi
