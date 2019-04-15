echo '.profile'

[ -f /etc/profile ] && . /etc/profile
[ -f ~/.shell/.aliases ] && . ~/.shell/.aliases
[ -f ~/.shell/.functions ] && . ~/.shell/.functions

#terminal colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

NPM_PACKAGES="$HOME/.npm-packages"

# added for npm-completion https://github.com/Jephuff/npm-bash-completion
PATH_TO_NPM_COMPLETION="/Users/cgwizdala/.npm-packages/lib/node_modules/npm-completion"
source $PATH_TO_NPM_COMPLETION/npm-completion.sh

##EXPORTS
##Yarn exports
export PATH="$HOME/.yarn/bin:$PATH"

#NPM global packages
export PATH=$PATH:"/usr/local/bin":"$NPM_PACKAGES/bin"

# we can inherit from /etc/manpath via the `manpath`command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="/usr/local/share/man:$(manpath)"

export EDITOR='code -w'

# export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export JAVA_HOME=$(/usr/libexec/java_home)

## Tomcat
export CATALINA_HOME="/usr/local/tomcat/8.5.15"

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"

PATH=$PATH:"/usr/local/bin":"/usr/local/bin":"/usr/local/bin" && cd $PATH_TO_NPM_COMPLETION && ./update && cd -






###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
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
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
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
