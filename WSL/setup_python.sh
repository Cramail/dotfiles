#!/bin/bash

if [ -e ~/.pyenv ]; then
  if [ -e ~/.pyenv/versions/miniconda3-4.3.30 ]; then
    echo "[!] Already install miniconda3-4.3.30"
  else
    echo "[*] Begin install miniconda3-4.3.30"
    pyenv install miniconda3-4.3.30
    echo "[!] Success install miniconda3-4.3.30"
  fi
  echo "[*] Begin install packages"
  conda update conda -y
  conda install pip -y
  pip install -U pip -y
  pip install progressbar2 -y
  pip install beautifulsoup4 -y
  pip install requests -y
  pip install nndownload -y
  echo "[!] Success install packages"
fi
