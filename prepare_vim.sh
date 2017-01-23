#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Generally useful plugins
git submodule add http://github.com/tpope/vim-fugitive.git $DIR/bundle/fugitive
git submodule add https://github.com/msanders/snipmate.vim.git $DIR/bundle/snipmate
git submodule add https://github.com/tpope/vim-surround.git $DIR/bundle/surround
git submodule add https://github.com/tpope/vim-git.git $DIR/bundle/git
git submodule add https://github.com/ervandew/supertab.git $DIR/bundle/supertab
#git submodule add https://github.com/sontek/minibufexpl.vim.git $DIR/bundle/minibufexpl
git submodule add https://github.com/wincent/Command-T.git $DIR/bundle/command-t
git submodule add https://github.com/mileszs/ack.vim.git $DIR/bundle/ack
git submodule add https://github.com/sjl/gundo.vim.git $DIR/bundle/gundo
git submodule add https://github.com/reinh/vim-makegreen $DIR/bundle/makegreen
git submodule add https://github.com/vim-scripts/TaskList.vim.git $DIR/bundle/tasklist
git submodule add https://github.com/vim-scripts/The-NERD-tree.git $DIR/bundle/nerdtree
git submodule add https://github.com/davidhalter/jedi-vim.git $DIR/bundle/jedi-vim
#git submodule add https://github.com/sontek/rope-vim.git $DIR/bundle/ropevim

# Python specific plugins
git submodule add https://github.com/mitechie/pyflakes-pathogen.git $DIR/bundle/pyflakes-pathogen
git submodule add https://github.com/fs111/pydoc.vim.git $DIR/bundle/pydoc
git submodule add https://github.com/vim-scripts/pep8.git $DIR/bundle/pep8
git submodule add https://github.com/alfredodeza/pytest.vim.git $DIR/bundle/py.test
git submodule add https://github.com/davidhalter/jedi-vim.git $DIR/bundle/jedi-vim

# Golang plugins
git submodule add https://github.com/fatih/vim-go.git $DIR/bundle/vim-go

# Yaml plugins
git submodule add https://github.com/chase/vim-ansible-yaml.git $DIR/bundle/vim-yaml

# Color schemes
git submodule add https://github.com/altercation/vim-colors-solarized.git $DIR/bundle/vim-colors-solarized

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

cp ./.vimrc ~/.vimrc
