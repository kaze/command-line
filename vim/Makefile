# Keep it simple for now...
all:
	[ -d ~/.vim/ ] || ln -s $(PWD) ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.ctags ] || ln -s $(PWD)/ctags ~/.ctags

clean:
	[ -d ~/.vim/ ] || rm -f ~/.vim
	[ -f ~/.vimrc ] || rm ~/.vimrc
	[ -f ~/.ctags ] || rm ~/.ctags

.PHONY: all
