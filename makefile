.PHONY : vim git awesome

CURDIR=~/hh_dotfiles
LNSOPT=-s

ifdef force
	LNSOPT=-fs
endif

submodule:
	git submodule update --init

vim: submodule
	cd vim/vundle ; git checkout master ; git pull;
	mkdir -p ~/.vim/bundle/
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln -n $(LNSOPT) $(CURDIR)/vim/vundle ~/.vim/bundle/vundle
	ln -n $(LNSOPT) $(CURDIR)/vim/colors ~/.vim/colors
	vim -c "BundleInstall"

git:
	ln $(LNSOPT) $(CURDIR)/git/gitconfig ~/.gitconfig

awesome:
	ln -n $(LNSOPT) $(CURDIR)/awesome ~/.config/awesome


