#!/bin/sh

DIR=$(dirname "$0")
cd $DIR
DIR=$(pwd)

chsh -s /bin/zsh `whoami`

for f in .[A-Z,a-z]*; do
	echo $f
	ln -sf "$DIR/$f" ~/$f
done
