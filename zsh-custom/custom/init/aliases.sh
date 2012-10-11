#! /usr/bin/bash

# --------------------------------------------------------------------------- #
# aliasok
# --------------------------------------------------------------------------- #

# általános
# --------------------------------------------------------------------------- #
alias ll="ls -l"
alias la="ls -al"
alias xmod="chmod +x "
alias c="clear"
alias stt='set_terminal_title'
alias vdir='vdir --color'

# tmux
# --------------------------------------------------------------------------- #
alias tmux="tmux -2"

# virtualhost aliasok
# --------------------------------------------------------------------------- #
alias hosts="sudo subl /etc/hosts"
alias ngconf="subl /usr/local/etc/nginx/nginx.conf"

# rails aliases
# --------------------------------------------------------------------------- #
alias devlog="tail -f log/development.log"

# chef
# --------------------------------------------------------------------------- #
alias chef-client="sudo -Es 'bash -lc chef-client'"

# python virtualenv
# --------------------------------------------------------------------------- #
alias activate="source bin/activate"

# django
# --------------------------------------------------------------------------- #
alias manage="python manage.py"
alias dserver="python manage.py runserver 0.0.0.0:8000"
alias dadmin="django-admin.py"

# server
# --------------------------------------------------------------------------- #
alias server="python -m SimpleHTTPServer"

