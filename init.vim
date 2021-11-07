" curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" make sure to do yarn install for vim prettier

set nocompatible				                " be iMproved, required
filetype off 	 				                " required

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'				            " colorscheme
Plug 'preservim/nerdtree'			            " folder tree display
Plug 'ctrlpvim/ctrlp.vim'			            " search files with Control-p
Plug 'Raimondi/delimitMate'                     " bracket completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " code completion
Plug 'ianks/vim-tsx'                            " syntax coloring for tsx files
Plug 'leafgarland/typescript-vim'               " syntax coloring for typescript keywords
Plug 'HerringtonDarkholme/yats.vim'             " more syntax coloring for typescript keywords
Plug 'voldikss/vim-floaterm'                    " terminal in vim with F12
Plug 'tpope/vim-fugitive'                       " git integration
Plug 'vim-airline/vim-airline'                  " specifies branch at bottom
Plug 'mhinz/vim-signify'                        " add signs for changes in file

" Configure ccls for C++ integration
" coc-emmet - React
" coc-prettier - Code formatting
" coc-vimlsp - Code completion, see coc-settings.json for supported languages
" coc-tsserver - Provides features for Typescript/Javascript
" coc-tslint - Typescript/Javascript linting
" coc-pyright for python3, coc-python for python version <3
let g:coc_global_extensions = ['coc-pyright', 'coc-java', 'coc-tsserver', 'coc-tslint', 'coc-vimlsp', 'coc-prettier', 'coc-emmet', 'coc-sh', 'coc-json']

call plug#end()

colorscheme gruvbox
let g:mapleader = "\<Space>"
map <silent> <leader>n :NERDTreeFocus<CR>

" Copy to clipboard
vnoremap  <leader>c  "+y

" Paste from clipboard
nnoremap <leader>p "+p

" map terminal to F12
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

" prettier autoformat
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" remap moving between windows
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-L> <C-W>l
nnoremap <S-H> <C-W>h

" tabbing
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

filetype plugin indent on 			            " required
syntax on
highlight ColorColumn ctermbg=0 guibg=lightgrey
set background=dark
set hidden
set noswapfile
set scrolloff=7
set ruler
set mouse=a
set nowrap
set spell
set number
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set fileformat=unix
set title
set selection=inclusive
set selection=inclusive
