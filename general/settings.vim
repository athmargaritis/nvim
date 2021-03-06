set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

:command! Wqa wqa
:command! WQa wqa
:command! WQA wqa
:command! Wq  wq 
:command! WQ  wq 
:command! Wa  wa 
:command! WA  wq 
:command! Qa  qa 
:command! QA  qa 

if !exists('g:vscode')
  syntax enable                           " Enables syntax highlighing
  set hidden                              " Required to keep multiple buffers open multiple buffers
  set nowrap                              " Display long lines as just one line
  " set nohlsearch
  set incsearch
  set encoding=utf-8                      " The encoding displayed 
  set pumheight=10                        " Makes popup menu smaller
  set fileencoding=utf-8                  " The encoding written to file
  set ruler              			            " Show the cursor position all the time
  set cmdheight=2                         " More space for displaying messages
  set mouse=a                             " Enable your mouse
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  set diffopt+=vertical                   " Vertical split for diff
  set t_Co=256                            " Support 256 colors
  " set conceallevel=0                      " So that I can see `` in markdown files

  " set ignorecase
  " set smartcase

  set tabstop=4                           " Insert 2 spaces for a tab
  set softtabstop=4                           " Insert 2 spaces for a tab
  set shiftwidth=4                        " Change the number of space characters inserted for indentation
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent

  set laststatus=2                        " Always display the status line
  set number                              " Line numbers
  set relativenumber                      " Relative numbers
  set cursorline                          " Enable highlighting of the current line
  set background=dark                     " tell vim what the background color looks like
  set showtabline=2                       " Always show tabs 
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  " set completeopt=menuone,noinsert,noselect
  set noswapfile
  set nobackup                            " This is recommended by coc
  set undodir=~/.vim/undodir
  set undofile
  set nowritebackup                       " This is recommended by coc
  set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
  set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
  " set colorcolumn=120
  set updatetime=200                      " Faster completion
  set timeoutlen=500                      " By default timeoutlen is 1000 ms
  set clipboard=unnamedplus               " Copy paste between vim and everything else
  set guifont=Hack\ Nerd\ Font
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set termguicolors
  set guicursor=
  " set guicursor=n-v-c:block-Cursor
  " set guicursor+=i:ver100-iCursor
  " set guicursor+=n-v-c:blinkon1
  " set guicursor+=i:blinkwait10
  " set mmp=1300
  set autochdir                           " Your working directory will always be the same as your working directory
  set scrolloff=20
  set switchbuf=usetab
  
  set foldmethod=syntax
  set foldnestmax=5
  set foldenable
  set foldlevelstart=0
  set foldcolumn=1                        " Folding abilities
  set foldopen-=block
  let g:fortran_fold=1
  
  " au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " LaTeX is Slow
  " autocmd FileType tex :NoMatchParen
  " au FileType tex setlocal nocursorline


  " " Folding
  " autocmd BufEnter *.tex set foldmethod=expr
  " autocmd BufEnter *.tex set foldexpr=vimtex#fold#level(v:lnum)
  " autocmd BufEnter *.tex set foldtext=vimtex#fold#text()
  " " Custom Folding for python
  " function! BlockFolds()
  "    let thisline = getline(v:lnum)
  "    if match(thisline, '^# %%') >= 0
  "       return ">1"
  "    else
  "       return "="
  "    endif
  " endfunction

  " autocmd BufEnter *.py set foldmethod=expr
  " autocmd BufEnter *.py set foldexpr=BlockFolds()

  " You can't stop me
  " cmap w!! w !sudo tee %
endif


