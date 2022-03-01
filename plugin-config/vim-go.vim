augroup go_mode
  autocmd! 
  autocmd filetype go nnoremap <leader>mr <Plug>(go-run)
  autocmd filetype go nnoremap <leader>mb <Plug>(go-build)
  autocmd filetype go nnoremap <leader>mc <Plug>(go-coverage-toggle)
  autocmd filetype go nnoremap <leader>mta <Plug>(go-test)
  autocmd filetype go nnoremap <leader>mtf <Plug>(go-test-func)
  autocmd filetype go nnoremap <leader>mf <Plug>(go-fmt)
  autocmd filetype go nnoremap <leader>lf <Plug>(go-fmt)
  autocmd filetype go nnoremap <leader>mg <Plug>(go-def)
  autocmd filetype go nnoremap <leader>me <Plug>(go-rename)
  autocmd filetype go nnoremap <leader>mii <Plug>(go-import)
  autocmd filetype go nnoremap <leader>mif <Plug>(go-info)
  autocmd filetype go nnoremap <leader>mit <Plug>(go-install)
  autocmd filetype go nnoremap <leader>md <Plug>(go-diagnostic)
  autocmd filetype go nnoremap <leader>mk <Plug>(go-describe)
  autocmd filetype go call Go_mode_prior()
augroup END

function! Go_mode_prior()
let g:which_key_map.m = {
			\ 'name':'+mode',
			\ 'r':['<Plug>(go-run)', 'go-run'],
			\ 'b':['<Plug>(go-build)', 'go-build'],
			\ 'c':['<Plug>(go-coverage-toggle)', 'go-coverage'],
			\ 'f':['<Plug>(go-fmt)', 'go-fmt'],
			\ 'g':['<Plug>(go-def)', 'goto-definition'],
			\ 'e':['<Plug>(go-rename)', 'go-rename'],
			\ 'i':{
				\ 'name': '+prefix',
				\'i':['<Plug>(go-import)', 'go-import'] ,
				\'f':['<Plug>(go-info)', 'go-info'] ,
				\'t':['<Plug>(go-install)', 'go-install']
				\},
			\ 'd':['<Plug>(go-diagnostic)', 'go-diagnostic'],
			\ 'k':['<Plug>(go-describe)', 'go-describe'],
			\ 't':{	
				\ 'name': '+test',
				\'a' :['GoTest', 'test-all'],
				\'f' :['GoTestFucn', 'test-func']
				\},
			\}

let g:which_key_map.l ={
			\ 'f': ['<Plug>(go-fmt)', 'go-fmt'],
			\}

endfunction

augroup python_mode
  autocmd! 
  autocmd filetype python nnoremap <leader>mr :GoRun %<cr>
  autocmd filetype python let g:which_key_map.m = {
			\ 'name':'+mode',
			\ 'r':['un define', 'python-run'],
			\}
augroup END
