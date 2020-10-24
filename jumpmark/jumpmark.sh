#!/bin/bash

CWD_PATH='/home/th/Documents/bash/jumpmark/currentmark'

function  mark () {
[[ ! -f $CWD_PATH ]] && touch $CWD_PATH ; pwd > $CWD_PATH && echo "marked current directory"
}

function jmp () {
    [[ -f $CWD_PATH ]] && cd $(cat $CWD_PATH)
}

function listmark () {
    [[ -f $CWD_PATH ]] && cat $CWD_PATH
}

#########################################################
# HOW TO SETUP
#########################################################
# you get the cwd path by writing pwd in the directory you have this script, then enter it here.

# you need to add this to your .bashrc to use the script, note that this should be the path given using pwd in the directory of this script like above

# alias mark='. jumpmark.sh && mark'
# alias jmp='. jumpmark.sh && jmp'
# alias listmark='. jumpmark.sh && listmark'
# PATH=$PATH:~/Documents/bash/jumpmark/

# developer note: the && after the script call is what calls the embedded functions
