set nocompatible

" Syntax highlighting FTW.
syntax on

" Set color scheme.
colo desert

" Follow the leader leader.
let mapleader = "-"

" Set tab settings. TODO: Revisit these.
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

" Set indent.
set autoindent
" Enable indent plugin autodectection.
:filetype indent on
set textwidth=80
" Show current position of the cursor at the bottom (in the "ruler").
set ruler
" Numbers by default.
" TODO: add shortcuts to disable for the current buffer.
set number

" Search settings
set incsearch
set ic

" Show trailing whitespace.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:match ExtraWhitespace /\s\+$/

" Delete redundant spaces when saving.
autocmd BufWritePre * :%s/\s\+$//e

" Set smart indenting for Python files.
" TODO: Revisit this.
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent

" Run gofmt on go files when saving. Note that the :edit must go after the gofmt
" invocation to reload the file
autocmd BufWritePost *.go :!gofmt -w=true %

" Octave Syntax
augroup filetypedetect
    au! BufRead,BufNewFile *.m setfiletype octave
augroup END

" Edit and source the .vimrc file easily.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Write current file into .vimrc
nnoremap <leader>wv :write! $MYVIMRC<cr>

