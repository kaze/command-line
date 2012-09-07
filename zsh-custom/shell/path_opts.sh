#! /usr/bin/bash

# --------------------------------------------------------------------------- #
# path opciók
# --------------------------------------------------------------------------- #

# sencha
# --------------------------------------------------------------------------- #
PATH="/Applications/dev/sencha:${PATH}"
PATH="/Applications/dev/sencha/command:${PATH}"
PATH="/Applications/dev/sencha/jsbuilder:${PATH}"

# python
# --------------------------------------------------------------------------- #
PATH="/System/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
PATH="/usr/local/share/python:${PATH}:${HOME}/bin"

# saját bin könyvtár
# --------------------------------------------------------------------------- #
PATH="/usr/local/sbin:${PATH}:/Users/kaze/code/bin"

# git
# --------------------------------------------------------------------------- #
PATH="/usr/local/bin:${PATH}"

# flex
# --------------------------------------------------------------------------- #
# export FLEX_HOME="/Applications/_adobe/Adobe Flex Builder 3/sdks/3.3.0"
# export PATH="$PATH:$FLEX_HOME/bin"

# haskell
# --------------------------------------------------------------------------- #
PATH="${HOME}/Library/Haskell/bin:${PATH}"

# eightpack
# --------------------------------------------------------------------------- #
PATH="~/eightpack/bin:${PATH}"

# my own bin directory
PATH="${HOME}/code/bin:${PATH}"

# postgres app
# --------------------------------------------------------------------------- #
PATH="/Applications/dev/Postgres.app/Contents/MacOS/bin:${PATH}"

# (bd)sm bash scripting framework
# --------------------------------------------------------------------------- #
PATH="${PATH}:/Users/kaze/.sm/bin:/Users/kaze/.sm/pkg/active/bin:/Users/kaze/.sm/pkg/active/sbin"

# brew coreutils
# --------------------------------------------------------------------------- #
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# brew php
# --------------------------------------------------------------------------- #
# PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
# PATH="$(brew --prefix php54)/bin:$PATH"

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
# export PYTHONSTARTUP="/Users/kaze/.ipython/ipy_user_conf.py"

# node.js
# --------------------------------------------------------------------------- #
export NODE_PATH='/usr/local/lib/node_modules'

# MANPATH
# --------------------------------------------------------------------------- #
MANPATH="/usr/local/share/man/man3:${MANPATH}"
MANPATH="/usr/local/git/man:$MANPATH"
export MANPATH
