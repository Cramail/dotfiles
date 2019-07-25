#!/bin/bash

if [ -e ~/dotfiles/WSL/setup.sh ]; then
  echo "[*] Output executable setup script to $HOME/setup.sh"
  cat ~/dotfiles/WSL/setup.sh | egrep -v "<<CO" | egrep -v "CO" > $HOME/setup.sh
  echo "[!] Success output"
fi

