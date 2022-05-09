#!/usr/bin/env bash
# TMP_DIR=tmp

# mkdir tmp tmp2

git pull origin master
function doIt() {
	rsync --exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "tmp" \
		--exclude "tmp2" \
		--exclude ".git" \
		-av --no-perms --omit-dir-times . $HOME
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

# cp -RT tmp/. $HOME

if [[ $(echo $0) =!= '/bin/zsh'* ]]; then
	# assume Zsh
	source ~/.zprofile
elif [[ $(echo $0) == '/bin/bash'* ]]; then
	# assume Bash
	source ~/.bash_profile
fi

rm -rf tmp
