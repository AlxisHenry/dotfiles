#!/bin/bash

# Inspired by https://github.com/mathiasbynens/dotfiles

# This is my personal dotfiles.
# Please check what this code is doing before launching it.

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function deploy() {
	rsync -avh --no-perms ./packages/* ~;
	source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	deploy;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		deploy;
	fi;
fi;

if [ "$1" == "--deployment" -o "$1" == "-d" ]; then
	git clone git@github.com:AlxisHenry/deployment.git ~/bin/deployment
fi

unset deploy;
cd ~;
