# Make shell check its window size after a process completes

[ -f ~/.profile ]   && . ~/.profile
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.zsh ] && . ${HOME}/.iterm2/.iterm2_shell_integration.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable nvm if available
if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi

# setopt nocorrectall; setopt correct
