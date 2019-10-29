so ~/.vim/config.vim

" More configurations
set mouse=a
set relativenumber
" set number

" bind K to grep word under cursor
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
"" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

so ~/.vim/coc-config.vim
