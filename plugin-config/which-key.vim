let g:which_key_display_names = { '<CR>': '↵', '<TAB>': '⇆',
				\ '<Space>': 'SPC', '<C-H>': 'BS',
				\ '<C-I>': 'TAB',}

" cancel float-window
let g:which_key_use_floating_win = 0
set timeoutlen=300

" sub-key : [ function / cmd === description ]
let g:which_key_map =  {}

let g:which_key_map =  { ';': ['<Plug>(easymotion-bd-f)', 'jump-char'] }

let g:which_key_map.h = {
      \ 'name' : '+help' ,
      \ 't' : ['Colors'     , 'color-themes']          ,
      \ }

let g:which_key_map.p = {
      \ 'name' : '+project' ,
      \ 'p' : ['CocList project'     , 'switch']          ,
      \ 'f' : ['Files'     , 'project-files']          ,
      \ }

let g:which_key_map.o = {
      \ 'name' : '+open' ,
      \ 'p' : ['NERDTreeToggle'     , 'nerdtree-toggle']          ,
      \ 'r' : ['NERDTreeRefreshRoot'     , 'nerdtree-fresh']          ,
      \ }

let g:which_key_map.f = {
      \ 'name' : '+file' ,
      \ 'p' : [':edit $BASE_PATH/init.vim'     , 'open-config']          ,
      \ 's' : ['write'     , 'save-file']          ,
      \ 'f' : ['Files'     , 'fzf-files']          ,
      \ 'h' : ['History'     , 'fzf-history-files']          ,
      \ '\' : [':source' ,'source-file']          ,
      \ }

let g:which_key_map.b = {
      \ 'name':'+buffer' ,
      \ 'b' : ['Buffers'     , 'fzf-buffers']          ,
      \ 'n' : ['bNext'     , 'buf-next']          ,
      \ 'p' : ['bprevious'     , 'buf-previous']          ,
      \ 'd' : ['bdelete'     , 'close-buf']          ,
      \ 'k' : ['bwipeout'     , 'kill-buf']          ,
      \ 'l' : ['blast!'     , 'last-buffer']          ,
      \ }

let g:which_key_map.w = {
      \ 'name' : '+window' ,
      \ 'h' : ['<c-w>h'     , 'cursor-left']          ,
      \ 'j' : ['<c-w>j'     , 'cursor-down']          ,
      \ 'k' : ['<c-w>k'     , 'cursor-up'  ]          ,
      \ 'l' : ['<c-w>l'     , 'cursor-right']          ,
      \ 'H' : ['<c-w>H'     , 'move-left']          ,
      \ 'J' : ['<c-w>J'     , 'move-down']          ,
      \ 'K' : ['<c-w>K'     , 'move-up'  ]          ,
      \ 'L' : ['<c-w>L'     , 'move-right']          ,
      \ 's' : ['split'     , 'split']          ,
      \ 'v' : ['vertical'     , 'vertical']          ,
      \ 'c' : ['close'     , 'close']          ,
      \ 'w' : ['Windows'     , 'fzf-windows']          ,
      \ }

let g:which_key_map.q = {
      \ 'name' : '+toggle' ,
      \ 'q' : ['quitall'     , 'quit']          ,
      \ 's' : ['Startify'     , 'Startify']          ,
      \ }


let g:which_key_map.j = {
      \ 'name' : '+jump' ,
      \ 'j' : ['<Plug>(easymotion-bd-f)'     , 'char2']          ,
      \ 'w' : ['<Plug>(easymotion-bd-w)'     , 'word']          ,
      \ 'l' : ['<Plug>(easymotion-bd-jk)'     , 'line']          ,
      \ }

let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'p' : ['Lines'     , 'fzf-lines']          ,
      \ 's' : ['BLines'     , 'fzf-buf-lines']          ,
      \ 'c' : [':<C-u>CocList commands'     , 'List-commands']          ,
      \ 'o' : [':<C-u>CocList outline'     , 'List-outline']          ,
      \ 'b' : [':<C-u>CocList -I symbols'     , 'List-symbols']          ,
      \ }

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'r' : ['<Plug>(coc-rename)'     , 'rename']          ,
      \ 'f' : ['<Plug>(coc-format-selected)'     , 'format']          ,
      \ 'q' : ['<Plug>(coc-fix-current)'     , 'quick-fix']          ,
      \ 'd' : [':<C-u>CocList diagnostics'     , 'diagnostic']          ,
      \ 'e' : [':<C-u>CocList extensions'     , 'extensions']          ,
      \ 'a' : {
        \ 'name' : '+action',
        \ 's' : ['<Plug>(coc-codeaction-selected)'     , 'code-action-selected']          ,
        \ 'c' : ['<Plug>(coc-codeaction)'     , 'code-action']          ,
	  \ },
      \ 'c' : {
        \ 'name' : '+codelens',
        \ 'l' : ['<space>lcl'     , 'codelens-action']          ,
	  \ },
      \ }

let g:which_key_map.c = {
      \ 'name' : '+comment' ,
      \ 'l' : ['nerdcommenter#Comment("n", "Invert")', 'line'],
      \ ';' : ['nerdcommenter#Comment("n", "Toggle")', 'line-comment'],
      \ '/' : ['nerdcommenter#Comment("n", "Sexy")', 'block-comment'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'g' : [':Git', 'git-status'],
      \ 'i' : [':Git init', 'init'],
      \ 'a' : [':Git remote add', 'remote-add'],
      \ 'b' : [':Git branch', 'branch'],
      \ 'B' : [':Git blame', 'blame'],
      \ 'c' : [':Git commit', 'commit'],
      \ 'C' : [':Git checkout', 'checkout'],
      \ 'p' : [':Git pull', 'pull'],
      \ 'P' : [':Git push', 'push'],
      \ 'd' : [':Git diff', 'diff'],
      \ 'D' : [':Git delete', 'delete'],
      \ 'm' : [':Git mergetool', 'mergetool'],
      \ 't' : {
	      \'name': '+toggle',
	      \'g':[':GitGutterToggle', 'guitter'] ,
	      \'s':[':GitGutterSignsToggle', 'highlight-signs'] ,
	      \'l':[':GitGutterLineHighlightsToggle', 'highlight-line'] ,
	      \'n':[':GitGutterLineNrHighlightsToggle', 'highlight-line-number'] 
	      \},
      \ }

let g:which_key_map_g =  {
			\ 'name' : '+goto',
			\ 'g' : ['<C-HOME>', 'file-top'],
			\ 'd' : ['<Plug>(coc-definition)', 'definition'],
			\ 'y' : ['<Plug>(coc-type-definition)', 'type'],
			\ 'i' : ['<Plug>(coc-implementation)', 'implementation'],
			\ 'r' : ['<Plug>(coc-references)', 'references'],
			\}

" hide statusline
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
