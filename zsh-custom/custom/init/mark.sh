export MARKPATH=$HOME/.marks

function jump {
  cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function mark {
  mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark {
  rm -i "$MARKPATH/$1"
}

function marks {
  # on os x
  if [[ `uname` == "Darwin" ]]; then
    \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
  elif [[ `uname` == "Linux" ]]; then
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
  fi
}

# zsh completion
function _completemarks {
  reply=($(ls $MARKPATH))
}

compctl -K _completemarks jump
compctl -K _completemarks unmark

# bash  completion
# _completemarks() {
#   local curw=${COMP_WORDS[COMP_CWORD]}
#   local wordlist=$(find $MARKPATH -type l -printf "%f\n")
#   COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
#   return 0
# }

# complete -F _completemarks jump unmark
