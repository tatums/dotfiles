set nocompatible               " be iMproved
filetype off                   " required!

" Show trailing white space
set list
set lcs=tab:▒░,trail:▓


"spell checking yo"
:setlocal spell spelllang=en_us
"auto complete spelling"
set complete+=kspell

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




