#!/bin/sh

DIR=$(dirname "$0")
cd $DIR
DIR=$(pwd)

chsh -s /bin/zsh `whoami`

for f in .[A-Z,a-z]*; do
	echo $f
	ln -s "$DIR/$f" ~/$f
done

mkdir -p ~/.config/git
ln -s "$DIR/attributes" ~/.config/git/attributes
