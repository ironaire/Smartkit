#!/bin/bash
# init.sh
# This file will init my bash env setting for my workbench
# including .bashrc, .bash_aliases, .bash_profile, .bash_project
# and vim config, emacs config, .gitconfig
# run this file using sh init.sh or ./init.sh if runnable

workbench="$PWD"
echo $workbench
misc="$workbench/Misc"
gitconfig="${misc}/gitconfig"
vim="$workbench/Vim"
vim_d="${vim}/vim"
vimrc="${vim}/vimrc"
emacs="${workbench}/Emacs"
bash="${workbench}/Bash"
bashrc="${bash}/bashrc"
bash_aliases="${bash}/bash_aliases"
bash_profile="${bash}/bash_profile"
bash_project="${bash}/bash_project"
dircolors_dark="${bash}/dircolors.solarized-dark"
set_terminal_solarized_theme="${bash}/gnome-terminal-colors-solarized/set_dark.sh"
dotgitconfig="$HOME/.gitconfig"
dotvim="$HOME/.vim"
dotvimrc="$HOME/.vimrc"
dotemacsdotd="$HOME/.emacs.d"
dotbashrc="$HOME/.bashrc"
dotbash_aliases="$HOME/.bash_aliases"
dotbash_profile="$HOME/.bash_profile"
dotbash_project="$HOME/.bash_project"
dotdir_colors="$HOME/.dir_colors"
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
# create symbolic for emacs
if [ -e ${dotemacsdotd} ]
then
    echo "${dotemacsdotd} exists, remove it"
    rm -rf ${dotemacsdotd} || { echo "Removing ${dotemacsdotd} failed"; exit 1; }
fi
echo "Create symbolic for ${dotemacsdotd}"
ln -f -s ${emacs} ${dotemacsdotd} || { echo "Creating symbolic ${dotemacsdotd} failed"; exit 1; }
echo "${dotemacsdotd} created"
echo `ls -l ${dotemacsdotd}`
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
# create symbolic for .bash_project
if [ -e ${dotbash_project} ]
then
    echo "${dotbash_project} exists, remove it"
    rm -rf ${dotbash_project} || { echo "Removing ${dotbash_project} failed"; exit 1; }
fi
echo "Create symbolic for ${dotbash_project}"
ln -f -s ${bash_project} ${dotbash_project} || { echo "Creating symbolic ${dotbash_project} failed"; exit 1; }
echo "${dotbash_project} created"
echo `ls -l ${dotbash_project}`

