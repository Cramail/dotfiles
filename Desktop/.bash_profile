#------------------------------------------------------------
#  Adding PATH
#------------------------------------------------------------
SHELLSCRIPT_PATH=~/.shellscript/
JAVA_HOME=/usr/lib/jvm/jdk-10.0.1
export PATH=$PATH:$SHELLSCRIPT_PATH:$JAVA_HOME/bin

KOTLIN_HOME=/opt/kotlinc
export PATH=$PATH:$KOTLIN_HOME/bin

###  Directory Path
GSYNC='/mnt/s/GoogleDrive'
DROPBOX='/mnt/c/telmi/Dropbox'
DOWNLOADS='/mnt/c/Users/telmi/Downloads'

### Read bashrc
test -r ~/.bashrc && . ~/.bashrc

