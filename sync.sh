#!/bin/bash


if [ "$1" = "to" ]; then
    cp ~/.vimrc .
    cp -R ~/.vim .
fi

if [ "$1" = "from" ]; then
    cp .vimrc ~/
    cp -R .vim ~/
fi
