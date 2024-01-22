# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/profile.pre.bash"
[ -f /etc/profile ] && . /etc/profile
[ -f $HOME/.shell/.aliases ] && . $HOME/.shell/.aliases
[ -f $HOME/.shell/.functions ] && . $HOME/.shell/.functions
[ -f ${HOME}/.iterm2/.iterm2_shell_integration.zsh ] && . ${HOME}/.iterm2/.iterm2_shell_integration.zsh && cd - && cd -

#terminal colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

## PATH EXPORTS
PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/local/sbin:$PATH"

##Yarn exports
[ -f $HOME/.yarn ] && PATH="$HOME/.yarn/bin:$PATH"

#NPM global packages
PATH="$NPM_PACKAGES/bin:$PATH"

# Ruby path
PATH="/usr/local/opt/ruby/bin:$PATH"
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rrubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Deno path
[ -f $HOME/.deno ] && PATH="$HOME/.deno/bin:$PATH"

# Rust path
[ -f $HOME/.cargo ] && PATH="$HOME/.cargo/bin:$PATH"

export PATH

# we can inherit from /etc/manpath via the `manpath`command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="/usr/local/share/man:$(manpath)"

export EDITOR='code -w'

export JAVA_HOME=$(/usr/libexec/java_home)

## Tomcat
export CATALINA_HOME="/usr/local/tomcat/8.5.15"

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"

export NODE_OPTIONS=--max_old_space_size=4096

# Private keys/tokens
if [ -r ~/.not-public ]; then
  source ~/.not-public
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# init rust env
source "$HOME/.rover/env"
. "$HOME/.cargo/env"

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion() {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
      COMP_LINE="$COMP_LINE" \
      COMP_POINT="$COMP_POINT" \
      npm completion -- "${words[@]}" \
      2>/dev/null)) || return $?
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT - 1)) \
      COMP_LINE=$BUFFER \
      COMP_POINT=0 \
      npm completion -- "${words[@]}" \
      2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion() {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
      COMP_LINE="$line" \
      COMP_POINT="$point" \
      npm completion -- "${words[@]}" \
      2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/profile.post.bash"
