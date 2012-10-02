#! /usr/bin/bash

# python
# --------------------------------------------------------------------------- #
PATH="/System/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
PATH="/usr/local/share/python:${PATH}:${HOME}/bin"

# usr
# --------------------------------------------------------------------------- #
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# haskell
# --------------------------------------------------------------------------- #
PATH="${HOME}/Library/Haskell/bin:${PATH}"

# eightpack
# --------------------------------------------------------------------------- #
PATH="~/eightpack/bin:${PATH}"

# postgres app
# --------------------------------------------------------------------------- #
PATH="/Applications/dev/Postgres.app/Contents/MacOS/bin:${PATH}"

# (bd)sm bash scripting framework
# --------------------------------------------------------------------------- #
PATH="${PATH}:/Users/kaze/.sm/bin:/Users/kaze/.sm/pkg/active/bin:/Users/kaze/.sm/pkg/active/sbin"

# brew
# --------------------------------------------------------------------------- #
# coreutils
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
# php
PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
PATH="$(brew --prefix php54)/bin:$PATH"

# node
# --------------------------------------------------------------------------- #
PATH="/usr/local/share/npm/bin:$PATH"

# dpd
# --------------------------------------------------------------------------- #
PATH="/usr/local/deployd/bin:$PATH"

# tmuxinator
# --------------------------------------------------------------------------- #
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# rvm
# --------------------------------------------------------------------------- #
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
rvm use default > /dev/null
PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

# my own bin directory
PATH="${HOME}/code/bin:${PATH}"

# sub
# --------------------------------------------------------------------------- #
eval "$(/Users/kaze/.sub/bin/sub init -)"

# and then finally export the path variable:
# --------------------------------------------------------------------------- #
export PATH

# java
# --------------------------------------------------------------------------- #
export JAVA_HOME="/Library/Java/Home"
CLASSPATH="~/opt/lib"
CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export CLASSPATH

# saját programkönyvtáraim helye
# --------------------------------------------------------------------------- #
export USERCLASSPATH="~/code/lib"

# saját szkriptjeim helye
# --------------------------------------------------------------------------- #
export USERSCRIPTPATH="~/code/lib/script"

# saját python path
# --------------------------------------------------------------------------- #
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:/Users/kaze/code/lib/python:/Library/Python/2.6/site-packages:/System/Library/Frameworks/Python.framework/Versions/2.6/Extras/lib/python/PyObjC"
export PYTHON_EGG_CACHE="/Users/kaze/.python-eggs"

# node.js
# --------------------------------------------------------------------------- #
export NODE_PATH='/usr/local/lib/node_modules'

# MANPATH - manual
# --------------------------------------------------------------------------- #
MANPATH="/usr/local/share/man:${MANPATH}"
export MANPATH
