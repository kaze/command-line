#!/bin/bash

# utility functions
# --------------------------------------------------------------------------- #

# link a file to the user's home directory
# as a dotfile
function link_dotfile() {
  ln -sf "$(pwd)/${1}" "${HOME}/.${1}";
}

# linking all files from the current directory
# to the user's home dir as dotfiles
function link_dotfiles() {
  local files=$(ls);

  for f in $files
  do
    link_dotfile $f;
  done
}

# link a file to the user's home directory
function link_file() {
  ln -sf "$(pwd)/${1}" "${2}";
}

# linking all files from the current directory
# to the user's home dir as dotfiles
function link_files() {
  local files=$(ls);
  local path=$1

  for f in $files
  do
    link_file $f $path;
  done
}

# downloads
# --------------------------------------------------------------------------- #
if [[ ! -d "${HOME}/.vim" ]]; then
  # installing vim
  curl -Lo- https://bit.ly/janus-bootstrap | bash;
fi

echo "---> janus-vim installed"

if [[ ! -d "${HOME}/.oh-my-zsh" ]]; then
  # installing zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  chsh -s /bin/zsh;
fi

echo "---> oh-my-zsh installed"

if [[ ! -f "${HOME}/.vimrc.before" ]]; then
  # downloading files for customization
  mkdir -p ${HOME}/tmp/src && cd ${HOME}/tmp/src;
  git clone https://github.com/kaze/command-line.git;

  # installing other dotfiles
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/dotfiles;
  link_dotfiles;

  # installing vim customization
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/vim-custom/janus;

  # ...cloning repos...
  while read -r repo
  do
    git clone ${repo}
  done < "./gitlist.txt"

  # linking files
  cd ${HOME}/tmp/src/command-line/vim-custom;
  link_dotfiles;

  # installing zsh customization
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/zsh-custom;
  rm -rf "${HOME}/.oh-my-zsh/custom";
  ln -sf "$(pwd)/custom" "${HOME}/.oh-my-zsh";
  link_dotfile "zshrc";

  # installing executables in /usr/local/bin
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/bin;
  mkdir "${HOME}/bin";
  link_files "${HOME}/bin";
fi

echo "---> my dotfiles in place"

