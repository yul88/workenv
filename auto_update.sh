#!/bin/bash

/usr/local/bin/brew update
/usr/local/bin/brew upgrade
/usr/local/bin/brew cask upgrade
/usr/local/bin/brew cleanup

cd /Users/langyu/.oh-my-zsh && git pull

cd /Users/langyu/.emacs.d && git pull

for d in `find /Users/langyu/.vim/plugged -type d -mindepth 1 -maxdepth 1`
do
    ( echo $d && cd $d && git pull )
done

for d in `find /Users/langyu/.tmux/plugins -type d -mindepth 1 -maxdepth 1`
do
    ( echo $d && cd $d && git pull )
done

