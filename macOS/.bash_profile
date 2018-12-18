# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'
alias clr='clear'
alias cdw='cd ~/Working'
alias l='ls'
alias ks='ls'
alias sl='ls'
alias javacu='javac -J-Dfile.encoding=utf-8 -d bin'
alias javau='java -Dfile.rncoding=utf-8 -cp bin'
alias cddw='cd ~/Downloads'
alias cddoc='cd ~/Documents'
alias atom='open -a /Volumes/GIGASTONE/Applications/Atom.app'

# PS1
PS1='\[\e[0;36m\][\u@\[\e[0;36m\]\H\[\e[0;37m\]:\[\e[0;32m\]\W\[\e[0;36m\]]\[\e[0;37m\] \$ ' 

export PATH
