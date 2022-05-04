# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"
# Make shell check its window size after a process completes

[ -f ~/.profile ] && . ~/.profile

unsetopt correct
DISABLE_CORRECTION="true"
# setopt nocorrectall; setopt correct

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
