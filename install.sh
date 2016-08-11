#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f ~/.bashrc ]; then
    {
        echo "if [ -f ${DIR}/.bashrc ]; then";
        echo "    . ${DIR}/.bashrc";
        echo "fi";
    } >> ~/.bashrc
else
    ln -s ${DIR}/.bashrc ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
        {
        echo "if [ -f ${DIR}/.bash_aliases ]; then";
        echo "    . ${DIR}/.bash_aliases";
        echo "fi";
    } >> ~/.bash_aliases
else
    ln -s ${DIR}/.bash_aliases ~/.bash_aliases
fi

if [ -f ~/.bash_git ]; then
    {
        echo "if [ -f ${DIR}/.bash_git ]; then";
        echo "    . ${DIR}/.bash_git";
        echo "fi";
} >> ~/.bash_git
else
        ln -s ${DIR}/.bash_git ~/.bash_git
fi
cp -r ${DIR}/.vim ~/.vim
cp ${DIR}/.vimrc ~/.vimrc


exec bash
