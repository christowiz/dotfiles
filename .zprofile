export PATH="$HOME/.cargo/bin:$HOME/go/bin:/usr/local/opt/ruby/bin:$PATH"

# Make shell check its window size after a process completes

[ -f ~/.profile ]   && . ~/.profile
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.zsh ] && . ${HOME}/.iterm2/.iterm2_shell_integration.zsh && cd - && cd -

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Enable nvm if available
if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi

export NODE_OPTIONS=--max_old_space_size=4096

# setopt nocorrectall; setopt correct

# Private keys/tokens
if [ -r ~/.not-public ]
then
    source ~/.not-public
fi
