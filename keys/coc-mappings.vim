" with enter add everything from popup menu
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "<tab>"

" new line when pressing enter
if !exists('g:vscode')
inoremap <expr> <cr> pumvisible() ? "\<esc>\<cr>\i" : "\<cr>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

nnoremap <C-e> :CocCommand explorer<cr>
