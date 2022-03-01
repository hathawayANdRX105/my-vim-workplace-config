" which-key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" call which_key to show up menus
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <silent> g :<c-u>WhichKey  'g'<CR>

" help
nnoremap <silent> <leader>ht :Colors<cr>

" nerd tree
nnoremap <silent> <leader>op :NERDTreeToggle<CR>
nnoremap <silent> <leader>or :NERDTreeRefreshRoot<CR>
nnoremap <silent> <c-0> :NERDTreeFocus<CR>


" file
nnoremap <silent> <leader>fp :e $BASE_PATH/init.vim<cr>
nnoremap <silent> <leader>fs :write<cr>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>fh :History<cr>
nnoremap <leader>f\ :source<cr>


" buffer 
nnoremap <silent> <leader>bn :bNext<cr>
nnoremap <silent> <leader>bp :bprevious<cr>
nnoremap <silent> <leader>bl :blast!<cr>
nnoremap <silent> <leader>bd :bdelete<cr>
nnoremap <silent> <leader>bk :bwipeout<cr>
nnoremap <silent> <leader>bb :Buffers<cr>


" window
nnoremap <silent> <leader>wh <c-w>h
nnoremap <silent> <leader>wj <c-w>j
nnoremap <silent> <leader>wk <c-w>k
nnoremap <silent> <leader>wl <c-w>l

nnoremap <silent> <leader>wH <c-w>H
nnoremap <silent> <leader>wJ <c-w>J
nnoremap <silent> <leader>wK <c-w>K
nnoremap <silent> <leader>wL <c-w>L

nnoremap <silent> <leader>ws :split<cr>
nnoremap <silent> <leader>wv :vertical<cr>
nnoremap <silent> <leader>wc :close<cr>

nnoremap <silent> <leader>ww :Windows<cr>

" toggle
nnoremap <silent> <leader>qq :quitall<cr>
nnoremap <silent> <leader>qs :Startify<cr>

" jump
nmap <silent> <leader>jj <Plug>(easymotion-bd-f)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>jl <Plug>(easymotion-bd-jk)

" search
nnoremap <silent> <leader>sp :Lines<cr>
nnoremap <silent> <leader>ss :BLines<cr> 

" comment
vnoremap <silent> <leader>c; :call nerdcommenter#Comment("x", "Toggle")<cr>
nnoremap <silent> <leader>c; :call nerdcommenter#Comment("n", "Toggle")<cr>
nnoremap <silent> <leader>cl :call nerdcommenter#Comment("n", "Invert")<cr>
vnoremap <silent> <leader>cl :call nerdcommenter#Comment("n", "Invert")<cr>
nnoremap <silent> <leader>c/ :call nerdcommenter#Comment("n", "Sexy")<cr>
vnoremap <silent> <leader>c/ :call nerdcommenter#Comment("n", "Sexy")<cr>

" git
nnoremap <silent> <leader>gg :Git<cr>
nnoremap <silent> <leader>gi :Git init<cr>
nnoremap <silent> <leader>gb :Git branch
nnoremap <silent> <leader>gB :Git blame<cr>
nnoremap <silent> <leader>gc :Git commit<cr>
nnoremap <silent> <leader>gC :Git checkout 
nnoremap <silent> <leader>gp :Git pull<cr>
nnoremap <silent> <leader>gP :Git push<cr>
nnoremap <silent> <leader>gd :Git diff<cr>
nnoremap <silent> <leader>gD :Git delete<cr>
nnoremap <silent> <leader>gm :Git mergetool<cr>

nnoremap <silent> <leader>gtg :GitGutterToggle<cr>
nnoremap <silent> <leader>gts :GitGutterSignsToggle<cr>
nnoremap <silent> <leader>gtl :GitGutterLineHighlightsToggle<cr>
nnoremap <silent> <leader>gtn :GitGutterLineNrHighlightsToggle<cr>
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" cursor movement when edit [insert / commands]
nnoremap <silent> [<space> meO<Esc>`e
nnoremap <silent> ]<space> meo<Esc>`e

" move a line or a paragraph up or down
" nnoremap <silent> <A-j> mz:m+1<cr>`z
" nnoremap <silent> <A-k> mz:m-2<cr>`z
" vmap <silent> <A-j> :m'>+<cr>`<my`>mzV`z`y
" vmap <silent> <A-k> :m'<-2<cr>`>my`<mzV`z`y

nnoremap <silent> <C-j> meO<Esc>`e
nnoremap <silent> <C-l> V

" basic operation in insert mode
inoremap <silent> <C-a> <Esc>^i
inoremap <silent> <C-e> <Esc>$a
inoremap <silent> <C-w> <Esc>wa
inoremap <silent> <C-u> <Esc>u`'

nnoremap <silent> c4 c$
nnoremap <silent> d4 d$
nnoremap <silent> y4 y$
nnoremap <silent> v4 v$

nnoremap <silent> <localleader>p "+p
nnoremap <silent> <localleader>y "+y

nmap <silent> <leader>; <Plug>(easymotion-bd-f)

" project
nnoremap <silent> <leader>pp :<C-u>CocList project<cr>
nnoremap <silent> <leader>pf :<C-u>Files<cr>

" which_key register for basic keymap
call which_key#register('<Space>', "g:which_key_map")
call which_key#register('g', "g:which_key_map_g")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
