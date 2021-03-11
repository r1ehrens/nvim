# NVIM

## Installation

### get nvim

`curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o /tmp/nvim.appimage` Will most-likely create a directory at current directory!

`sudo mv /tmp/nvim.appimage /usr/local/bin/nvim`

`chmod +x /usr/local/bin/nvim`

### Clone config

`git clone https://github.com/r1ehrens/nvim.git ~/.config/nvim`

### Install python & node support

`pip install pynvim`

`npm i -g neovim` does probably need sudo prefix

### Install Neovim remote

`pip install neovim-remote`

### install neovim nightly(0.5)

[install page](https://dev.to/creativenull/installing-neovim-nightly-alongside-stable-10d0)

### ctags

`sudo dnf install ctags`

### configure vscode

`cd ~/.config/Code/User/`

`ln -s GITHUBDIR/nvim/vscode/settings.json`

`ln -s GITHUBDIR/nvim/vscode/keybindings.json`

## coc-extensions

    node has to be installed

    - coc-clangd
    - coc-docker
    - coc-eslint
    - coc-explorer
    - coc-fzf-preview
    - coc-html
    - coc-java
    - coc-json
    - coc-markdownlint
    - coc-marketplace
    - coc-omnisharp
    - coc-snippets
    - coc-sql
    - coc-syntax
    - coc-tasks
    - coc-tslint-plugin
    - coc-tsserver
    - coc-vimlsp
    - coc-vimtex
