# NVIM

## Installation

### get nvim

`curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage`

`sudo mv /tmp/nvim.appimage /usr/local/bin/nvim`

`chmod +x /usr/local/bin/nvim`

### Clone config

`git clone https://github.com/r1ehrens/nvim.git ~/.config/nvim`

### Install vimplug
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

### Install python & node support
install python3!
`pip3 install pynvim`

### Install npm
install npm!
`npm i -g neovim` does probably need sudo prefix
        
### ctags

`sudo dnf install ctags`

### configure vscode

`cd ~/.config/Code/User/`

`ln -s GITHUBDIR/nvim/vscode/settings.json`

`ln -s GITHUBDIR/nvim/vscode/keybindings.json`

## coc-extensions

    node has to be installed
    :CocInstall ...
    Files are most likely safed under .config/coc/...

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
