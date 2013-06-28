# aliases for git functions
# ------------------------------------------------------------------------ #


# git status
# ------------------------------------------------------------------------ #
function gstat {
  if [[ $# > 0 ]]
  then
    git $@
  else
    git status
  fi
}


# commit without quotes
# ------------------------------------------------------------------------ #
function gcomm {
  git commit -m "$*"
}


# git push
# ------------------------------------------------------------------------ #
alias gp="git push"



