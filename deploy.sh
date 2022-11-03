#!/bin/bash

# Inspired by https://github.com/mathiasbynens/dotfiles

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

# Source scripts from bin folder
for script in $(ls ./bin); do
	source "./bin/$script";
done

function deploy() {
	__git__;
	rsync -avh --no-perms ./packages/ ~;
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

unset deploy;
cd ~;
