c() { cd ~/code/work/clients/$1;  }

_c() { _files -W ~/code/work/clients -/; }
compdef _c c

take() { mkdir -p $1 && cd $1; }
