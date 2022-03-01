" root browser
let g:rooter_patterns = ['.git/', '.projectile', 'Makefile', '*.sln', 'build/env.sh', ]

let g:rooter_targets = '*'
" nerd tree

" remain one nerd-tree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
