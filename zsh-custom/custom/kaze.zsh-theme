
function precmd () {
  setprompt
}

function preexec () {
  setopt extended_glob

  clear

  local CMD=${1[(wr)^(*=*|sudo|-*)]}
  echo -ne "\ek$CMD\e\\"
}

function divider () {
  # create a $fill of all screen width minus the path, the time string and a space:
  # -9 because: hh:mm:ss and a space before it
  let fillsize=$(( ${COLUMNS}-9 ))
  fill="%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%} "
  # -1 because: 1 space after the path
  let fillsize=$(( ${fillsize}-${#${PWD/#$HOME/~}}-1 ))
  while [ "${fillsize}" -gt "0" ]
  do
    fill="${fill}-"
    let fillsize=${fillsize}-1
  done
  echo "${fill}"
}

function venv_prompt () {
  local _venv='$(virtualenv_prompt)'
  echo -n "$_venv%{$reset_color%}"
}

# setprompt () {
#   setopt prompt_subst

#   PROMPT="$(divider) %{$fg[green]%}%D{%H:%M:%S}%{$reset_color%}$(venv_prompt)%{$fg_bold[red]%}➜ %{$fg[cyan]%}%C %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"

#   ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
#   ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#   ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
#   ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

#   ZSH_THEME_TERM_TAB_TITLE_IDLE="%15<..<%C%<<" #15 char left truncated PWD
#   ZSH_THEME_TERM_TITLE_IDLE="%n::%m - %C directory"
# }

setprompt () {
  setopt prompt_subst

  PROMPT="$(divider) %{$fg_bold[red]%}%D{%H:%M:%S}%{$reset_color%}$(venv_prompt)%{$fg_bold[red]%}➜  %{$reset_color%}"

  ZSH_THEME_TERM_TAB_TITLE_IDLE="%15<..<%C%<<" #15 char left truncated PWD
  ZSH_THEME_TERM_TITLE_IDLE="%n on %m - %C directory"
}

set_terminal_title () {
  ZSH_THEME_TERM_TITLE_IDLE="$1"
  ZSH_THEME_TERM_TAB_TITLE_IDLE="$1"
}
alias stt="set_terminal_title"

# vim: set ft=zsh:

