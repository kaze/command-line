#! /usr/bin/bash

# --------------------------------------------------------------------------- #
# aliasok
# --------------------------------------------------------------------------- #


# általános
# --------------------------------------------------------------------------- #
alias ls="ls --color"
alias ll="ls -l"
alias la="ls -al"
alias xmod="chmod +x "
alias c="clear"
alias stt='set_terminal_title'
alias vdir='vdir --color'
alias duck='du -cks * | sort -rn | head -10'
alias rserver='ruby -run -e httpd . -p5000'
alias pserver='python -m SimpleHTTPServer'
alias j='jump'


# tmux
# --------------------------------------------------------------------------- #
alias tmux="tmux -2"


# ctags
# ------------------------------------------------------------------------ #
alias retag="ctags -R --exclude=.svn --exclude=.git --exclude=log --exclude=tmp *"


