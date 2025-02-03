[ -f /etc/zprofile ] && . /etc/zprofile
[ -f "${HOME}"/.iterm2/.iterm2_shell_integration.zsh ] && . "${HOME}"/.iterm2/.iterm2_shell_integration.zsh && cd - && cd - || exit

# #terminal colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR='code -w'

# # Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--fontdir=/Library/Fonts"

export NODE_OPTIONS=--max_old_space_size=4096

# unsetopt correct
# DISABLE_CORRECTION="true"
# setopt nocorrectall; setopt correct

export VAULT_ADDR=https://vault-nonprd.devops.pluto.tv/
export TERM="xterm-256color"

export LDFLAGS="-L/opt/homebrew/opt/jpeg/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include:-I/opt/homebrew/opt/jpeg/include"

# Node.js caching
export NODE_COMPILE_CACHE=~/.cache/nodejs-compile-cache
export DEFAULT_USER="$(whoami)"

# PATH

fpath=(/usr/local/share/zsh/site-functions $fpath)

# Set PATH, MANPATH, etc., for Homebrew.
eval $(/opt/homebrew/bin/brew shellenv)

# If you come from bash you might have to change your $PATH.
PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/local/sbin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH

# we can inherit from /etc/manpath via the `manpath`command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="/usr/local/share/man:$(manpath)"
export MANPATH
