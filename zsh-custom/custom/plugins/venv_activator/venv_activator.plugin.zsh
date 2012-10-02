# inspired by Yaniv Aknin
# http://tech.blog.aknin.name/2010/10/14/zsh-and-virtualenv/
# modified walkup script: ~/code/versioned/command-line/bin/walkup
# (it has to be on PATH)

VIRTUAL_ENV_DISABLE_PROMPT=True

act () {
  if [ -n "$1" ]
  then
    if [ ! -d "$1" ]
    then
      echo "act: $1 no such directory"
      return 1
    fi
    if [ ! -e "$1/bin/activate" ]
    then
      echo "act: $1 is not a virtualenv"
      return 1
    fi
    if which deactivate > /dev/null
    then
      deactivate
    fi
    cd "$1"
    source bin/activate
  else
    virtualenv="$(walkup bin/activate)"
    if [ $? -eq 1 ]
    then
      echo "act: not in a virtualenv"
      return 1
    fi
    source "$virtualenv"/bin/activate
  fi
}

function active_virtualenv() {
  if [ -z "$VIRTUAL_ENV" ]; then
    # not in a virtualenv
    return
  fi

  basename "$VIRTUAL_ENV"
}

function enclosing_virtualenv() {
  if ! which walkup > /dev/null; then
    return
  fi
  virtualenv="$(walkup bin/activate)"
  if [ -z "$virtualenv" ]; then
    # not in a virtualenv
    return
  fi

  basename $(grep VIRTUAL_ENV= "$virtualenv"/bin/activate | sed -E 's/VIRTUAL_ENV="(.*)"$/\1/')
}

function virtualenv_prompt() {
  local active="$(active_virtualenv)"
  local enclosing="$(enclosing_virtualenv)"
  if [ -z "$active" -a -z "$enclosing" ]; then
    # no active virtual env, no enclosing virtualenv, just leave
    return
  fi
  if [ -z "$active" ]; then
    local color=white
    local text="$enclosing"
  else
    if [ -z "$enclosing" ]; then
      local color=yellow
      local text="$active"
    elif [ "$enclosing" = "$active" ]; then
      local color=green
      local text="$active"
    else
      local color=red
      local text="$active":"$enclosing"
    fi
  fi
  local result="[%{$fg[$color]%}${text}%{$reset_color%}]"
  echo -n $result
}


# vim: set ft=zsh :
