" vim-slime-ipython configurations

" always use neovim
let g:slime_target = 'neovim'

" fix paste issues in ipython
let g:slime_python_ipython = 1

augroup Terminal
  autocmd!
  autocmd TermOpen * let g:last_terminal_job_id = b:terminal_job_id
augroup END

" Limit cells by tags
let g:ipython_cell_delimit_cells_by = 'tags'
let g:ipython_cell_tag = '# %%'

" Call slime_rg
nnoremap ;t :call slime_rg#slime_config_rg()<CR>
