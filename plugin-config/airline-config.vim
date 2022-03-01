" airline config

let g:airline_theme = 'violet'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled=0

let g:airline_section_c_only_filename = 1
let g:airline#extensions#branch#format = 2
let laststatus = 2
let g:airline_powerline_fonts = 1

let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'error', 'warning' ]
      \ ]

let g:airline#extensions#default#section_truncate_width = {
	\ 'a': 40,
	\ 'b': 80,
      	\ 'c': 80,
      	\ 'x': 60,
      	\ 'warning': 80,
      	\ 'error': 80,
      	\ }

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ' '
let g:airline_symbols.colnr = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = ':'
let g:airline_symbols.maxlinenr = ' '			  

let g:airline_symbols.maxlinenr = '☰ '
let g:airline#extensions#clock#auto = 0

function! AirlineInit()
let g:airline_section_y = airline#section#create(['clock', g:airline_symbols.space, g:airline_section_z])
"let g:airline_section_a = airline#section#create(['mode'])
endfunction

autocmd User AirlineAfterInit call AirlineInit()


