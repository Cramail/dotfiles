PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]\$ '
#------------------------------------------------------------
#  Command alias
#------------------------------------------------------------
alias rm='rm -i'
alias clr='clear'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -la'
alias ks='ls'
alias src='source'
alias ps='ps --sort=start_time'
alias py3='python3'
alias pip='pip3'
alias vi='vim'

#------------------------------------------------------------
#  Alias of ChangeDirectory
#------------------------------------------------------------
alias cdwo="cd /mnt/c/Users/telmi/OneDrive/WorkingOnedrive"
alias cdc='cd /mnt/c'
alias cddl='cd /mnt/c/Users/telmi/Downloads'
alias cddc="cd /mnt/s/Dropbox/Class/H30"
alias cddb='cd /mnt/s/Dropbox'
alias cdw="cd /mnt/s/working"
alias ..='cd ../'

#------------------------------------------------------------
#  Adding PATH
#------------------------------------------------------------
SHELLSCRIPT_PATH=~/.shellscript/
export PATH=$PATH:$SHELLSCRIPT_PATH

#------------------------------------------------------------
#  Java Setting
#------------------------------------------------------------
JAVA_HOME=/usr/lib/jvm/jdk-10.0.1/bin/
export PATH=$PATH:$JAVA_HOME

#------------------------------------------------------------
#  Windows Applications
#------------------------------------------------------------
###  Alias
alias pdfv="/mnt/c/Program\ Files/Tracker\ Software/PDF\ Viewer/PDFXCview.exe"
alias xyzzy='/mnt/s/ProgramFiles/xyzzy/xyzzy.exe'
alias calc='calc.exe &'
alias ep='explorer.exe .'
alias powershell='powershell.exe'

###  Directory Path
GSYNC='/mnt/s/GoogleDrive'
DROPBOX='/mnt/s/Dropbox'
DOWNLOADS='/mnt/c/Users/telmi/Downloads'

#------------------------------------------------------------
#  SSH 
#------------------------------------------------------------
alias tutssh='ssh y183337@wlinux1.edu.tut.ac.jp'
