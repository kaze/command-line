# apache
# --------------------------------------------------------------------------- #
alias a2start="apachectl start"
alias a2stop="apachectl stop"
alias a2restart="apachectl restart"

# couchdb
# --------------------------------------------------------------------------- #
alias couchstart="launchctl load -w ~/Library/LaunchAgents/org.apache.couchdb.plist"
alias couchstop="launchctl unload -w ~/Library/LaunchAgents/org.apache.couchdb.plist"

# mariadb
# --------------------------------------------------------------------------- #
alias mariastart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mariadb.plist"
alias mariastop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mariadb.plist"

# memcached
# --------------------------------------------------------------------------- #
alias memstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"

# mongodb
# --------------------------------------------------------------------------- #
alias mongostart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mongostop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"

# nginx
# --------------------------------------------------------------------------- #
# alias ngstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
# alias ngstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias ngstart="sudo nginx"
alias ngstop="sudo nginx -s stop"

# pow
# --------------------------------------------------------------------------- #
alias powstart="load_pow"
alias powstop="unload_pow"

# rabbitmq
# --------------------------------------------------------------------------- #
alias rabbitstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist"
alias rabbitstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist"

# redis
# --------------------------------------------------------------------------- #
alias redisstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redisstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"

# selenium
# --------------------------------------------------------------------------- #
alias selstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.selenium-server-standalone.plist"
alias selstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.selenium-server-standalone.plist"

# ubigraph
# --------------------------------------------------------------------------- #
alias ugs="ubigraph_server"
alias ugsb="ubigraph_server &"
