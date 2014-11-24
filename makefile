.PHONY : vim git awesome

CURDIR=~/hh_dotfiles
LNSOPT=-Tfns

submodule:
	git submodule update --init

vim: submodule
	cd vim/vundle ; git checkout master ; git pull;
	mkdir -p ~/.vim/bundle/
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln $(LNSOPT) $(CURDIR)/vim/vundle ~/.vim/bundle/vundle
	ln $(LNSOPT) $(CURDIR)/vim/colors ~/.vim/colors
	vim -c "BundleInstall"

git:
	ln $(LNSOPT) $(CURDIR)/git/gitconfig ~/.gitconfig

awesome:
	ln $(LNSOPT) $(CURDIR)/awesome ~/.config/awesome


