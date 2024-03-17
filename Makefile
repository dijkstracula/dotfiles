ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

all: .gitconfig .config/nvim .tmux.conf

.PHONY: .gitconfig
.gitconfig:
	ln -sf $(ROOT_DIR)/.gitconfig $(HOME)/.gitconfig

.PHONY: .config/nvim
.config/nvim:
	ln -sf $(ROOT_DIR)/.config/nvim $(HOME)/.config/nvim

.PHONY: .tmux.conf
.tmux.conf:
	ln -sf $(ROOT_DIR)/.tmux.conf $(HOME)/.tmux.conf
