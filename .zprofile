# Make shell check its window size after a process completes

[ -f ~/.profile ]   && . ~/.profile
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.zsh ] && . ${HOME}/.iterm2/.iterm2_shell_integration.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

setopt nocorrectall; setopt correct

# Private keys/tokens
if [ -r ~/.not-public ]
then
    source ~/.not-public
fi
