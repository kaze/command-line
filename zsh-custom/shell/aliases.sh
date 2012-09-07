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
alias reload="source ~/.zshrc"
alias stt='set_terminal_title'

# tmux
# --------------------------------------------------------------------------- #
alias tmux="tmux -2"

# vim aliasok
# --------------------------------------------------------------------------- #
# alias vim="vim -u ~/.vimrc"
# alias mvim="mvim -u $MYVIMRC"

# virtualhost aliasok
# --------------------------------------------------------------------------- #
alias hosts="sudo subl /etc/hosts"
alias ngconf="subl /usr/local/etc/nginx/nginx.conf"

# ruby aliases
# --------------------------------------------------------------------------- #
alias gemdoc-start="yard server --gems"
alias gemdoc-rebuild="yard gems --rebuild"
alias gemlist-create="gem list -d > ~/code/notes/gemdetails.txt"
alias gemlist-open="open ~/code/notes/gemdetails.txt"

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

# terminitor
# --------------------------------------------------------------------------- #
alias ti="terminitor"

# server
# --------------------------------------------------------------------------- #
alias server="python -m SimpleHTTPServer"

# --------------------------------------------------------------------------- #
# aliases for os x
# --------------------------------------------------------------------------- #

# single application mode on mac
# --------------------------------------------------------------------------- #
alias samon="defaults write com.apple.dock single-app -bool true && killall Dock"
alias samoff="defaults write com.apple.dock single-app -bool false && killall Dock"

# sitemanager
# --------------------------------------------------------------------------- #
alias sitemanager="sudo ruby /Users/kaze/opt/lib/ruby/sitemanager/init.rb"
alias workr="sudo ruby /Users/kaze/opt/lib/ruby/workr/init.rb"

# mutatja/elrejti a rejtett fájlokat a Finderben
# --------------------------------------------------------------------------- #
alias show-hidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hide-hidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# nem hagyja elaludni a gépet
# --------------------------------------------------------------------------- #
alias nosleep="pmset noidle"

# saját wiki
# --------------------------------------------------------------------------- #
alias kazewiki="ruby /Users/kaze/opt/doc/other/kazewiki/instiki.rb"

# rundeck
# --------------------------------------------------------------------------- #
alias rundeck="java -jar rundeck-launcher-1.4.3.jar"

