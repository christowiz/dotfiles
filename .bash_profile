echo '.bash_profile'

# Make shell check its window size after a process completes
shopt -s checkwinsize

[ -f ~/.profile ]   && . ~/.profile
[ -f ~/.bash_prompt ] && . ~/.bash_prompt
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.bash ] && . ${HOME}/.iterm2/.iterm2_shell_integration.bash

# Git completion
source ~/.shell/.git-completion.bash