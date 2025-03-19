ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

all: gitconfig config/nvim tmux.conf

.PHONY: config
config:
	mkdir $(HOME)/.config

.PHONY: gitconfig
gitconfig:
	ln -sf $(ROOT_DIR)/$@ $(HOME)/.$@

.PHONY: config/nvim
config/nvim: config
	ln -sf $(ROOT_DIR)/$@ $(HOME)/.$@

.PHONY: tmux.conf
tmux.conf:
	ln -sf $(ROOT_DIR)/$@ $(HOME)/.$@
