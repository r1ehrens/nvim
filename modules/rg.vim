nnoremap <silent> <leader>f :Rg<CR>
"Use ripgrep for current word!
"nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

"Use ripgrep only for code!
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
