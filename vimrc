set nocompatible               " be iMproved
filetype off                   " required!


" Show trailing white space
set list
set lcs=tab:▒░,trail:▓



colorscheme molokai
syntax on
set number
set t_Co=256
set tabstop=2 shiftwidth=2 expandtab


" ---  Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
" ---  Remove trailing whitespace

"---- Relative Number
"set relativenumber
"---- Relative Number




