#!/usr/bin/env bash

git pull origin master

function doIt() {
	local SHELL_EXCLUDES=(
		'.DS_Store'
		'.git'
		'bootstrap.sh'
		'install.sh'
		'README.md'
	)

	rsync --exclude ".DS_Store" \
		--exclude "${SHELL_EXCLUDES[@]}" \
		-av --no-perms --omit-dir-times . "$HOME"
}

mkdir ~/.not-public

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt
else
	read -pr "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt

	fi
fi
unset doIt

source "$HOME/.zprofile"
