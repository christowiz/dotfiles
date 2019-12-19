[ -f /etc/profile ] && . /etc/profile

#terminal colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

NPM_PACKAGES="$HOME/.npm-packages"

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

[ -f $HOME/.shell/.aliases ] && . $HOME/.shell/.aliases
[ -f $HOME/.shell/.functions ] && . $HOME/.shell/.functions

# Private keys/tokens
if [ -r ~/.not-public ]
then
    source ~/.not-public
fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
