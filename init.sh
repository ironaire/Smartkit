#!/bin/bash
# init.sh
# This file will init my bash env setting for my smart kit
# run this file using sh init.sh or ./init.sh if runnable

workDir="$PWD"
echo $workDir
vim="$workDir/vims"
vim_d="${vim}/vim"
vimrc="${vim}/vimrc"
dotvim="$HOME/.vim"
dotvimrc="$HOME/.vimrc"

# test if .vim exists
if [ -e "${dotvim}" ]
then
    echo "${dotvim} exists, remove it"
    rm -rf ${dotvim} || { echo "Removing ${dotvim} failed"; exit 1; }
fi
echo "Create symbolic for ${dotvim}"
ln -f -s ${vim_d} ${dotvim} || { echo "Creating symbolic ${dotvim} failed"; exit 1; }
echo "${dotvim} created"
echo `ls -l ${dotvim}`

# create symbolic for .vimrc
if [ -e "${dotvimrc}" ]
then
    echo "${dotvimrc} exists, remove it"
    rm -rf ${dotvimrc} || { echo "Removing ${dotvimrc} failed"; exit 1; }
fi
echo "Create symbolic for ${dotvimrc}"
ln -f -s ${vimrc} ${dotvimrc} || { echo "Creating symbolic ${vimrc} failed"; exit 1; }
echo "${dotvimrc} created"
echo `ls -l ${dotvimrc}`

