
CURDIR=~/confback
LNSOPT=-s

ifdef force
	LNSOPT=-fs
endif

vim:
	ln $(LNSOPT) $(CURDIR)/vim_conf/vimrc ~/.vimrc

git:
	ln $(LNSOPT) $(CURDIR)/git_conf/gitconfig ~/.gitconfig

awesome:
	ln $(LNSOPT) $(CURDIR)/awesome_conf ~/.config/awesome


