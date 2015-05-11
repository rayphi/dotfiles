#!/bin/sh
if [ -f ~/.bashrc ]; then
    {
        echo "if [ -f ${PWD}/.bashrc ]; then";
        echo "    . ${PWD}/.bashrc";
        echo "fi";
    } >> ~/.bashrc
else
    ln -s ${PWD}/.bashrc ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	{
        echo "if [ -f ${PWD}/.bash_aliases ]; then";
        echo "    . ${PWD}/.bash_aliases";
        echo "fi";
    } >> ~/.bash_aliases
else
    ln -s ${PWD}/.bash_aliases ~/.bash_aliases
fi

if [ -f ~/.bash_git ]; then
    {
        echo "if [ -f ${PWD}/.bash_git ]; then";
        echo "    . ${PWD}/.bash_git";
        echo "fi";
} >> ~/.bash_git
else
	ln -s ${PWD}/.bash_git ~/.bash_git
fi
