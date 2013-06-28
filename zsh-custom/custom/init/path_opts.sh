#! /usr/bin/bash

# node
# --------------------------------------------------------------------------- #
PATH="/usr/local/share/npm/bin:$PATH"


# /usr/local stuff
# --------------------------------------------------------------------------- #
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"


# my own bin directory
# --------------------------------------------------------------------------- #
PATH="${PATH}:${HOME}/code/bin"


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

