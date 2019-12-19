# Make shell check its window size after a process completes

[ -f ~/.profile ]   && . ~/.profile
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.zsh ] && . ${HOME}/.iterm2/.iterm2_shell_integration.zsh

# Private keys/tokens
if [ -r ~/.not-public ]
then
    source ~/.not-public
fi
