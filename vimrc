colorscheme molokai
syntax on
set number
set t_Co=256
set tabstop=2 shiftwidth=2 expandtab

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Show trailing white space
set list
set lcs=tab:▒░,trail:▓



" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'thoughtbot/vim-rspec'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'https://github.com/kien/ctrlp.vim.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Remove trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

