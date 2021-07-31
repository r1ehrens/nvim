if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugs')

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" nice icons
Plug 'ryanoasis/vim-devicons'

" C++ syntax highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

" easy commentary
Plug 'tpope/vim-commentary'
"
" allows to repeat plugin mappings with '.'
Plug 'tpope/vim-repeat'

" navigation and text manipulation
Plug 'tpope/vim-surround'

" auto completion and much more
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" find files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" .git directory is start of project
Plug 'airblade/vim-rooter'

" vim startpage
Plug 'mhinz/vim-startify'

" Git
" displays git status for each line
Plug 'mhinz/vim-signify'

" pulse when entry found
Plug 'inside/vim-search-pulse'

" some snippets
Plug 'honza/vim-snippets'

" Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" vim window navigation for tmux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
