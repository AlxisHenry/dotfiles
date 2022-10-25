#!/bin/bash

# Inspired by https://github.com/mathiasbynens/dotfiles

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function deploy() {
	rsync -avh --no-perms ./packages/ ~;
	source ~/.bash_profile;
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

unset deploy;
