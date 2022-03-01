set encoding=utf-8
"GuiFont! Space\ Mono:h16
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16
set guifont=Space\ Mono\ for\ Powerline:h20
" theme config
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

" theme config
colorscheme space-vim-dark
color space-vim-dark
set termguicolors     " enable true colors support

set number
hi LineNr ctermbg=NONE guibg=NONE
hi Comment cterm=italic


" leaderF 
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
"let g:Lf_DevIconsFont = "Space\ Mono\ for\ Powerline:h8"
" If needs
set ambiwidth=double

" rainbow config
let g:rainbow_active = 1
