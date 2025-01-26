#!/usr/bin/env bash

git pull origin master

EXCLUDE_BASH=(
	.bash_profile
	.bash_prompt
	.bashrc
	.shell/git-completion/git-completion.bash
)
EXCLUDE_ZSH=(
	.p10k.zsh
	.zprofile
	.zshrc
	.zsh_nocorrect
	.shell/git-completion/.git-completion.zsh
)

function doIt() {
	local SHELL_EXCLUDES

	if [[ $0 != '/bin/zsh'* ]]; then
		# assume Zsh
		SHELL_EXCLUDES=("${EXCLUDE_BASH[@]}")
	elif [[ $0 == '/bin/bash'* ]]; then
		# assume Bash
		SHELL_EXCLUDES=("${EXCLUDE_ZSH[@]}")
	fi

	rsync --exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude ".git" \
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

if [ -f "$HOME/.zprofile" ]; then
	# assume Zsh
	# shellcheck source=$HOME/.bash_profile
	source "$HOME/.zprofile"
elif [ -f "$HOME/.bash_profile" ]; then
	# assume Bash
	# shellcheck source=$HOME/.bash_profile
	source "$HOME/.bash_profile"
fi

rm -rf tmp
