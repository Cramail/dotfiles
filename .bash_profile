#------------------------------------------------------------
#  Adding PATH
#------------------------------------------------------------
SHELLSCRIPT_PATH=~/.shellscript/
JAVA_HOME=/usr/lib/jvm/jdk-10.0.1/bin/
export PATH=$PATH:$SHELLSCRIPT_PATH:$JAVA_HOME

###  Directory Path
GSYNC='/mnt/s/GoogleDrive'
DROPBOX='/mnt/s/Dropbox'
DOWNLOADS='/mnt/c/Users/telmi/Downloads'

### Read bashrc
test -r ~/.bashrc && . ~/.bashrc

