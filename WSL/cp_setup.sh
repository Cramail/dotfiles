#!/bin/bash

if [ -e ~/dotfiles/WSL/setup.sh ]; then
  cat ~/dotfiles/WSL/setup.sh | egrep -v "/^<<|^CO/" > ~/setup.sh
fi

