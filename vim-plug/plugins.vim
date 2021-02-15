" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  " Smart abbreviation/substitution/coercion
  Plug 'tpope/vim-abolish'
  " Fast fold
  Plug 'Konfekt/FastFold'
  " Python folding
  Plug 'tmhedberg/SimpylFold'
  " Fortran90
  Plug 'rudrab/vimf90'
  let g:VimF90Linter=2
  " MiniBufExplorer
  " Plug 'weynhamz/vim-plugin-minibufexpl'
  " Ultisnips
  " Plug 'SirVer/ultisnips'
  " NerdTree
  Plug 'preservim/nerdtree'
  " Telescope
  Plug 'nvim-telescope/telescope.nvim'


  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'

  else
    " Text Navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    " Plug 'easymotion/vim-easymotion'
    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'arcticicestudio/nord-vim'
    Plug 'kaicataldo/material.vim'
    Plug 'lifepillar/vim-solarized8'
  Plug 'gruvbox-community/gruvbox'
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'tomasiser/vim-code-dark'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " coc-python
    Plug 'neoclide/coc-python'
    " Status Line
    Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'vifm/vifm.vim'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    " Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Making stuff
    Plug 'neomake/neomake'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Vim Wiki
    Plug 'https://github.com/vimwiki/vimwiki.git'

    " Ipython - slime
    Plug 'jpalardy/vim-slime', { 'for': 'python' }
    Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

    " LaTeX
    Plug 'lervag/vimtex'

    " tex conceal
    Plug 'KeitaNakamura/tex-conceal.vim'

    " Markdown
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
    Plug 'mzlogin/vim-markdown-toc'

  endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
