
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader=" "
let maplocalleader=","
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')

  " Simulate same Tab behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else
  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>
  inoremap jj <Esc>
  inoremap kk <Esc>

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>

  " " Tab in general mode will move to text tab
  " nnoremap <silent> <Tab> :tabnext<CR>
  " " SHIFT-Tab will go back
  " nnoremap <silent> <S-Tab> :tabprevious<CR>

  " Tab and S-Tab  
  nnoremap <silent> <Tab> :bnext<CR>
  nnoremap <silent> <S-Tab> :bprevious<CR>

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <Tab>: completion.
  inoremap <silent> <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"


  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Terminal window navigation
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>

  " Use alt + hjkl to resize windows
  nnoremap <silent> <M-j>    :resize -2<CR>
  nnoremap <silent> <M-k>    :resize +2<CR>
  nnoremap <silent> <M-h>    :vertical resize -2<CR>
  nnoremap <silent> <M-l>    :vertical resize +2<CR>

  " Quickly insert an empty new line without entering insert mode
  nnoremap <Leader>o o<Esc>
  nnoremap <Leader>O O<Esc>

  " IPython cell mappings
  autocmd FileType python nnoremap ;<Enter> :IPythonCellExecuteCell<Enter>
  autocmd FileType python nnoremap <F5> :IPythonCellRunTime<Enter>
  autocmd FileType python nnoremap ;c :IPythonCellExecuteCellJump<Enter>
  autocmd FileType python nnoremap ;l :IPythonCellClear<Enter>
  autocmd FileType python nnoremap ;x :IPythonCellClose<Enter>
  autocmd FileType python nnoremap ;R :IPythonCellRestart<Enter>
  autocmd FileType python nnoremap ]c :IPythonCellNextCell<Enter>
  autocmd FileType python nnoremap [c :IPythonCellPrevCell<Enter>

  " Python format
  autocmd FileType python nnoremap <C-f> :call CocAction('format')<Enter>

  " vimwiki contents
  map <leader>toc :call vimwiki#base#table_of_contents(1)<CR>

endif

