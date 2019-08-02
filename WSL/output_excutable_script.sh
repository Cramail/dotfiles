#!/bin/bash
if [ -e $HOME/dotfiles/WSL/setup.sh ]; then
  if [ $# -ne 0 ]; then
    if [ $1 == "-h" -o $1 == "--help" ]; then
      echo "usage: $ bash output_executable_script.sh [executable=BASH, MOUNT, VIM, PYENV]"
      echo "example: $ bash output_executable_script.sh ENV PYENV"
      exit
    else
      echo "[*] Output executable setup script to $HOME/setup.sh"
      cat $HOME/dotfiles/WSL/setup.sh > $HOME/setup1.sh
      i=0
      while [ $i -lt $# ]
      do
        (( i++ ))
        j=$(( i+1 ))
        args=`echo $@ | cut -d " " -f$i`
        if [ $args == "PYENV" ] || [ $args == "BASH" ] || [ $args == "VIM" ] || [ $args == "MOUNT" ]; then
          cat $HOME/setup$i.sh | egrep -v "^.*?${args}$" > $HOME/setup$j.sh
        else
          echo "usage: $ bash output_executable_script.sh [executable=BASH, MOUNT, VIM, PYENV]"
          echo "example: $ bash output_executable_script.sh ENV PYENV"
          exit  
        fi
      done
      mv $HOME/setup$j.sh $HOME/setup.sh
      j=1
      while [ $j -le $i ]
      do
        rm -f $HOME/setup$j.sh
        (( j++ ))
      done
      chmod +x $HOME/setup.sh
      echo "[!] Success output"
    fi
  else
    echo "[*] Output executable setup script to $HOME/setup.sh"
    cat ~/dotfiles/WSL/setup.sh | egrep -v "^.*?BASH" | egrep -v "^.*?PYENV" | egrep -v "^.*?VIM" | egrep -v "^.*?MOUNT" > $HOME/setup.sh
    chmod +x $HOME/setup.sh
    echo "[!] Success output"
  fi
fi

