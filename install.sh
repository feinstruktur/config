#!/bin/sh

DIR=$(dirname "$0")
cd $DIR
DIR=$(pwd)

chsh -s /bin/zsh `whoami`

for f in .[A-Z,a-z]*; do
	if [ "$f" != ".git" ]; then
		ln -s "$DIR/$f" ~/$f
	fi
done

mkdir -p ~/.config/git
ln -s "$DIR/attributes" ~/.config/git/attributes
