" it contains the basic setting of vim

set number " line number

set hlsearch " highlight when searching
set ignorecase " ignore case when searching

" close scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" highlight cursor and cursor's line
set ruler
set cursorline

set autoindent
set smartindent

let NERDTreeIgnore=['.\pyc$' , '.git', '.projectile' ] 

set wrap
set linebreak
set showbreak=->

" cancle cursor flash
set gcr=a:block-blinkon0
