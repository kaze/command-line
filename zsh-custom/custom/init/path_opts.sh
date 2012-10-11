#! /usr/bin/bash

# usr
# --------------------------------------------------------------------------- #
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# rvm
# --------------------------------------------------------------------------- #
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
rvm use default > /dev/null
PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

# my own bin directory
PATH="${HOME}/bin:${PATH}"

# sub
# --------------------------------------------------------------------------- #
eval "$(${HOME}/.sub/bin/sub init -)"

# and then finally export the path variable:
# --------------------------------------------------------------------------- #
export PATH

# node.js
# --------------------------------------------------------------------------- #
export NODE_PATH='/usr/local/lib/node_modules'

# MANPATH - manual
# --------------------------------------------------------------------------- #
MANPATH="/usr/local/share/man:${MANPATH}"
export MANPATH
