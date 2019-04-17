# Make shell check its window size after a process completes
shopt -s checkwinsize

[ -f ~/.profile ]   && . ~/.profile
[ -f ~/.bash_prompt ] && . ~/.bash_prompt
[ -f ~/.bashrc ] && . ~/.bashrc
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.bash ] && . ${HOME}/.iterm2/.iterm2_shell_integration.bash

# Git completion
source ${HOME}/.shell/.git-completion.sh
