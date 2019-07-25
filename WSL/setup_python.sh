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
  conda update conda -y
  conda install -y pip 
  pip install -U -y pip 
  pip install -y progressbar2 
  pip install -y beautifulsoup4 
  pip install -y requests 
  pip install -y nndownload 
  echo "[!] Success install packages"
fi
