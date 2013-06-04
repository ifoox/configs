:set nocompatible

" Syntax highlighting FTW.
syntax on

" Numbers by default.
" TODO: add shortcuts to disable for the current buffer.
:set number

" Follow the leader leader.
:let mapleader = "-"

" Edit and source the .vimrc file easily.
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:nnoremap <leader>wv :write! $MYVIMRC<cr>

" Set color scheme.
:colo desert
