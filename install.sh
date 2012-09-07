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
    link_dotfile ${f};
  done
}

# pre-installation and downloads
# --------------------------------------------------------------------------- #
# installing prerequisites
# sudo apt-get update
# sudo apt-get install -y git-core vim wget zsh zsh-dev zsh-doc;

# installing vim
curl -Lo- https://bit.ly/janus-bootstrap | bash;

# installing zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh;
chsh -s /bin/zsh;

# downloading files for customization
mkdir -p ${HOME}/tmp/src && cd ${HOME}/tmp/src;
git clone git@bitbucket.org:kaaze/command-line.git;

# installing other dotfiles
# --------------------------------------------------------------------------- #
cd ${HOME}/tmp/src/command-line/dotfiles;
link_dotfiles;

# installing vim customization
# --------------------------------------------------------------------------- #
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
# --------------------------------------------------------------------------- #
cd ${HOME}/tmp/src/command-line/zsh-custom;
rm -rf "${HOME}/.oh-my-zsh/custom";
ln -sf "$(pwd)/custom" "${HOME}/.oh-my-zsh";
link_dotfile "zshrc";
