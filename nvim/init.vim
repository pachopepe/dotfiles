" the prefix to use for leader commands
let g:mapleader=","

set mouse=a

if has('nvim')
    call plug#begin(stdpath('data') . '/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'

call plug#end()

" Numbers
set number
set relativenumber

" Tabs
set expandtab
set smarttab
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent

" search
set incsearch
set ignorecase
" set colorcolumn 80
" highlight ColorColumn ctermbg=0 guibg=lightgray


"" move betwen tab windows
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <silent> <S-t> :tabnew<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>
