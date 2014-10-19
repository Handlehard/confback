.PHONY : vim git awesome

CURDIR=~/hh_dotfiles
LNSOPT=-s

ifdef force
	LNSOPT=-fs
endif

vim:
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc

git:
	ln $(LNSOPT) $(CURDIR)/git/gitconfig ~/.gitconfig

awesome:
	ln -n $(LNSOPT) $(CURDIR)/awesome ~/.config/awesome


