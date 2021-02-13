" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


"Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'ranger' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
"let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
"let g:which_key_map['z'] = [ 'Goyo'                                            , 'zen' ]

" Group mappings

" a is for actions
let g:which_key_map['a'] = {
      \ 'name' : '+actions' ,
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ }

" b is for buffer
let g:which_key_map['b'] = {
      \ 'name' : '+buffer' ,
      \ 'd' : [':bd', 'buffer delete'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'b' : ['Buffers'                , 'fzf-buffer'],
      \ '!' : [':bd!'                , 'buffer delete!'],
      \ }
"noremap <silent><leader>bd :bp<cr>:bd #<cr>

let g:which_key_map['c'] = {
     \ 'name' : '+comment' ,
     \ 'c' : [''  , 'comment line'],
     \ 'v' : [''   , 'comment visual'],
     \ 't' : ['gcgc' , 'uncomment adjacent'],
     \ }
nmap <leader>cc gcc
vmap <leader>cv gc

" d is for debug
let g:which_key_map['d'] = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" f is for find and replace
let g:which_key_map['f'] = {
      \ 'name' : '+find & replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'file'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

" k is for task
let g:which_key_map['k'] = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }

" s is for search
let g:which_key_map["s"] = {
      \ 'name' : '+search' ,
      \ 'b' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles'              , 'hidden files'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'g' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'q' : [':CocCommand fzf-preview.QuickFix'                  , 'quickfix list'],
      \ 'r' : [':Rg'                    , 'text Rg'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 'z' : [':FZF --reverse $HOME'                , 'FZF home'],
      \ }
" 

let g:which_key_map['S'] = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map['g'] = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'L' : [':Glog'                          , 'log verbose'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : [':Gstatus'                          , 'status'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status preview'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map['l'] = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : ['<Plug>(coc-refactor)'                 , 'refactor'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map['t'] = {
      \ 'name' : '+terminal' ,
      \ 't' : [':split | term'         , 'terminal'],
      \ }
      "\ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      "\ 'd' : [':FloatermNew lazygit'                        , 'docker'],

let g:which_key_map['v'] = {
      \ 'name' : '+vimdiff' ,
      \ 'u' : [':diffupdate'     , 'update']    ,
      \ 'o' : [':diffoff'     , 'off']    ,
      \ 't' : [':diffthis'     , 'this']    ,
      \ 'c' : [':Gw!'     , 'commit this']    ,
      \ 'r' : [':diffget REMOTE'     , 'get REMOTE']    ,
      \ 'b' : [':diffget BASE'     , 'get BASE']    ,
      \ 'l' : [':diffget LOCAL'     , 'get LOCAL']    ,
      \ }
      "\ 'p' : [':diffput'     , 'put']          ,
      "\ 'g' : [':diffget'     , 'get']         ,
nnoremap <leader>vp :diffput<space>
nnoremap <leader>vg :diffget<space>

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other']          ,
      \ 'd' : ['<C-W>c'     , 'delete']         ,
      \ 'j' : ['<C-W>J'     , 'move down']    ,
      \ 'k' : ['<C-W>K'     , 'move up']    ,
      \ 'h' : ['<C-W>H'     , 'move left']    ,
      \ 'l' : ['<C-W>L'     , 'move right']    ,
      \ '=' : ['<C-W>='     , 'balance']        ,
      \ 'o' : ['<C-W>o'     , 'only']        ,
      \ 's' : ['<C-W>s'     , 'split horizontal']        ,
      \ 'v' : ['<C-W>v'     , 'split vertical']        ,
      \ 'q' : [':copen'     , 'quickfix']        ,
      \ 'S' : [':call WindowSwap#EasyWindowSwap()'     , 'swap']        ,
      \ }
"ignoring keys
"
let g:which_key_map['q'] = 'which_key_ignore'


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
