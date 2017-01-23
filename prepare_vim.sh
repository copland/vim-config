#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUNDLE_DIR=$DIR/bundle

# Cleanup old bundles to make sure we are only getting what we want
if [[ -d $BUNDLE_DIR ]]; then
	rm -rf $BUNDLE_DIR/*
else
	mkdir -p $BUNDLE_DIR
fi

function install_plugin() {
    local repo=$1
    local loc=$2
    cloned_dir=$(echo "$repo" | cut -d'/' -f5 | cut -d'.' -f1)
    git clone $repo $cloned_dir
    mv $cloned_dir $loc
}


# Generally useful plugins
install_plugin http://github.com/tpope/vim-fugitive.git $BUNDLE_DIR/fugitive
install_plugin http://github.com/msanders/snipmate.vim.git $BUNDLE_DIR/snipmate
install_plugin https://github.com/tpope/vim-surround.git $BUNDLE_DIR/surround
install_plugin https://github.com/tpope/vim-git.git $BUNDLE_DIR/git
install_plugin https://github.com/wincent/Command-T.git $BUNDLE_DIR/command-t
install_plugin https://github.com/mileszs/ack.vim.git $BUNDLE_DIR/ack
install_plugin https://github.com/sjl/gundo.vim.git $BUNDLE_DIR/gundo
install_plugin https://github.com/reinh/vim-makegreen $BUNDLE_DIR/makegreen
install_plugin https://github.com/vim-scripts/The-NERD-tree.git $BUNDLE_DIR/nerdtree
install_plugin https://github.com/davidhalter/jedi-vim.git $BUNDLE_DIR/jedi-vim

# Python specific plugins
install_plugin https://github.com/mitechie/pyflakes-pathogen.git $BUNDLE_DIR/pyflakes-pathogen
install_plugin https://github.com/fs111/pydoc.vim.git $BUNDLE_DIR/pydoc
install_plugin https://github.com/vim-scripts/pep8.git $BUNDLE_DIR/pep8
install_plugin https://github.com/alfredodeza/pytest.vim.git $BUNDLE_DIR/py.test
install_plugin https://github.com/davidhalter/jedi-vim.git $BUNDLE_DIR/jedi-vim

# Golang plugins
install_plugin https://github.com/fatih/vim-go.git $BUNDLE_DIR/vim-go

# Yaml plugins
install_plugin https://github.com/chase/vim-ansible-yaml.git $BUNDLE_DIR/vim-yaml

# Color schemes
install_plugin https://github.com/altercation/vim-colors-solarized.git $BUNDLE_DIR/vim-colors-solarized

cp ./.vimrc ~/.vimrc
