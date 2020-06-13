" vim-slime-ipython configurations

let g:slime_ipython_console_layout = {'position': 'right', 'width': 0.5}
let g:slime_ipython_repls = {
    \ 'python': ["ipython3\n", "%cpaste -q\n", "--\n"],
    \ 'sh': ["shell\n", "", ""],
    \ }
let g:slime_ipython_no_highlight = 1

let g:slime_ipython_no_mapping = 1

" show or hide REPL terminal-console
nnoremap ;t :ToggleConsole<CR>

" cell manager
" call submode#MapEnterKeys('cell-mode', ['<M-CR>', '<Leader><Esc>'])
" call submode#MapLeaveKeys('cell-mode', ['<CR>', 'q'])
" call submode#SetMaps('cell-mode', {
"     \ '<M-CR>': ':SendCurrentCellNext<CR>',  " will auto show REPL
"     \ 'j': ':NextCell<CR>',
"     \ 'k': ':PrevCell<CR>',
"     \ 'J': ':MoveCellDown<CR>',
"     \ 'K': ':MoveCellUp<CR>',
"     \ 'dd': ':CutCurrentCell<CR>',
"     \ 'yy': ':CopyCurrentCell<CR>',
"     \ })
