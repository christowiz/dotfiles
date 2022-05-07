#!/usr/bin/env bash
TMP_DIR=tmp

git pull origin master
function doIt() {
	rsync --exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude ".git" \
		-av --no-perms --omit-dir-times . tmp
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt

	fi
fi
unset doIt

cp -R tmp/. ~/

if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
	# assume Zsh
	source ~/.zprofile
elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
	# assume Bash
	source ~/.bash_profile
fi
