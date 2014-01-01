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
if [[ ! -d "${HOME}/.oh-my-zsh" ]]; then
  # installing zsh
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  chsh -s /bin/zsh;
fi

echo "---> oh-my-zsh installed";

if [[ ! -d "${HOME}/.vim" ]]; then

  if [[ ! -d "${HOME}/tmp/src/command-line" ]]; then
    # downloading files for customization
    mkdir -p ${HOME}/tmp/src && cd ${HOME}/tmp/src;
    git clone https://github.com/kaze/command-line.git;

    echo "---> command-line repo downloaded";
  fi

  # updating the local command-line repo
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line;
  git pull;

  echo "---> command-line repo updated";

  # installing other dotfiles
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/dotfiles;
  link_dotfiles;

  echo "---> dofiles linked";

  # installing zsh customization
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line/zsh-custom;
  rm -rf "${HOME}/.oh-my-zsh/custom";
  ln -sf "$(pwd)/custom" "${HOME}/.oh-my-zsh";
  link_dotfile "zshrc";
  link_dotfile "zshenv";

  echo "---> zsh customization done";

  # installing sub
  # --------------------------------------------------------------------------- #
  cd "$HOME/tmp/src/command-line";
  rm -rf "$HOME/.sub";
  ln -sf "$(pwd)/sub" "${HOME}/.sub";

  echo "---> sub linked";

  # installing emacs customization
  # --------------------------------------------------------------------------- #
  cd "$HOME/tmp/src/command-line";
  rm -rf "$HOME/.emacs.d";
  ln -sf "$(pwd)/emacs-custom" "${HOME}/.emacs.d";

  echo "---> emacs customization done";

  # installing executables in /usr/local/bin
  # ------------------------------------------------------------------------- #
  cd "${HOME}/tmp/src/command-line/bin";
  mkdir -p "${HOME}/bin";
  link_files "${HOME}/bin";

  echo "---> bin directory linked";

  # installing vim customization
  # ------------------------------------------------------------------------- #
  cd ${HOME}/tmp/src/command-line;
  ln -sf "$(pwd)/vim" "${HOME}/.vim";
  cd ${HOME}/tmp/src/command-line/vim;
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle;
  make;
  vim +BundleInstall +qall;

  echo "---> vim customization done";
fi

echo "---> all customization done"

