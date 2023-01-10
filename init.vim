" basic configurations
set number relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set noswapfile

call plug#begin()

Plug 'rafi/awesome-vim-colorschemes' " https://github.com/rafi/awesome-vim-colorschemes [colorschemes]
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline [adds status line at the bottom]
Plug 'mhinz/vim-signify' " https://github.com/mhinz/vim-signify [Show git diff in a sign column]
Plug 'preservim/nerdtree' " https://github.com/preservim/nerdtree [file browser]
Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary [comment in files]
Plug 'preservim/tagbar' " https://github.com/preservim/tagbar [browse files and directory structures]
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " https://github.com/neoclide/coc.nvim [code completion]
Plug 'Raimondi/delimitMate' " https://github.com/Raimondi/delimitMate [bracket completion]
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go [go]
Plug 'xiyaowong/nvim-transparent'

call plug#end()

" colorscheme and transparency in background
:colorscheme gruvbox
highlight Normal ctermbg=NONE guibg=NONE 

" coc-nvim installations
let g:coc_global_extensions = ['coc-pyright', 'coc-prettier', 'coc-vimlsp']
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
hi CocMenuSel ctermbg=109 guibg=#13354A

" -- coc-vim: code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" -- coc-vim: symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Remap leader key to Space
let g:mapleader = "\<Space>"

" NerdTree overrides
map <silent> <leader>n :NERDTreeFocus<CR>

" Tagbar overrides
nmap <C-S> :TagbarToggle<CR>
set completeopt-=preview " for no previews

" Remap switching between windows
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-L> <C-W>l
nnoremap <S-H> <C-W>h

" vim-go overrides
let g:go_def_mapping_enabled = 0


