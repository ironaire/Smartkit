#!/bin/bash
# init.sh
# This file will init my bash env setting for my smart kit
# including .bashrc, .bash_aliases, .bash_profile
# and vim config, .gitconfig, ctags regex patterns
# run this file using sh init.sh or ./init.sh if runnable

workDir="$PWD"
echo $workDir
misc="$workDir/Misc"
gitconfig="${misc}/gitconfig"
ctags="${misc}/ctags"
vim="$workDir/Vim"
vim_d="${vim}/vim"
vimrc="${vim}/vimrc"
bash="${workDir}/Bash"
bashrc="${bash}/bashrc"
bash_aliases="${bash}/bash_aliases"
bash_profile="${bash}/bash_profile"
dotgitconfig="$HOME/.gitconfig"
dotctags="$HOME/.ctags"
dotvim="$HOME/.vim"
dotvimrc="$HOME/.vimrc"
dotbashrc="$HOME/.bashrc"
dotbash_aliases="$HOME/.bash_aliases"
dotbash_profile="$HOME/.bash_profile"
# test if .gitconfig exists
if [ -e "${dotgitconfig}" ]
then
    echo "${dotgitconfig} exists, remove it"
    rm -rf ${dotgitconfig} || { echo "Removing ${dotgitconfig} failed"; exit 1; }
fi
echo "Create symbolic for ${dotgitconfig}"
ln -f -s ${gitconfig} ${dotgitconfig} || { echo "Creating symbolic ${dotgitconfig} failed"; exit 1; }
echo "${dotgitconfig} created"
echo `ls -l ${dotgitconfig}`

# test if .ctags exists
if [ -e "${dotctags}" ]
then
    echo "${dotctags} exists, remove it"
    rm -rf ${dotctags} || { echo "Removing ${dotctags} failed"; exit 1; }
fi
echo "Create symbolic for ${dotctags}"
ln -f -s ${ctags} ${dotctags} || { echo "Creating symbolic ${dotctags} failed"; exit 1; }
echo "${dotctags} created"
echo `ls -l ${dotctags}`

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

# create symbolic for .bashrc
if [ -e ${dotbashrc} ]
then
    echo "${dotbashrc} exists, remove it"
    rm -rf ${dotbashrc} || { echo "Removing ${dotbashrc} failed"; exit 1; }
fi
echo "Create symbolic for ${dotbashrc}"
ln -f -s ${bashrc} ${dotbashrc} || { echo "Creating symbolic ${dotbashrc} failed"; exit 1; }
echo "${dotbashrc} created"
echo `ls -l ${dotbashrc}`

# create symbolic for .bash_aliases
if [ -e ${dotbash_aliases} ]
then
    echo "${dotbash_aliases} exists, remove it"
    rm -rf ${dotbash_aliases} || { echo "Removing ${dotbash_aliases} failed"; exit 1; }
fi
echo "Create symbolic for ${dotbash_aliases}"
ln -f -s ${bash_aliases} ${dotbash_aliases} || { echo "Creating symbolic ${dotbash_aliases} failed"; exit 1; }
echo "${dotbash_aliases} created"
echo `ls -l ${dotbash_aliases}`

# create symbolic for .bash_profile
if [ -e ${dotbash_profile} ]
then
    echo "${dotbash_profile} exists, remove it"
    rm -rf ${dotbash_profile} || { echo "Removing ${dotbash_profile} failed"; exit 1; }
fi
echo "Create symbolic for ${dotbash_profile}"
ln -f -s ${bash_profile} ${dotbash_profile} || { echo "Creating symbolic ${dotbash_profile} failed"; exit 1; }
echo "${dotbash_profile} created"
echo `ls -l ${dotbash_profile}`

echo "Cloning vim plugin manager vundle"
git clone https://github.com/gmarik/vundle.git ${dotvim}/bundle/vundle
echo "Vim vundle cloned"
echo `ls -l ${dotvim}/bundle`

