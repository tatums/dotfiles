
set nocompatible               " be iMproved
filetype off                   " required!

" Leader
let mapleader = " "
set list


"spell checking yo"
":setlocal spell spelllang=en_us
"auto complete spelling"
"set complete+=kspell

"colorscheme molokai
colorscheme getafe
syntax enable
set background=dark
colorscheme getafe

"colorscheme github
"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0


syntax on
set number
set t_Co=256
set tabstop=2 shiftwidth=2 expandtab


" leader mappings "
map <Leader>n :NERDTreeToggle<CR>
map <Leader>b :BuffergatorToggle<CR>
" leader mappings "


" ---  Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
" ---  Remove trailing whitespace

"---- Relative Number
"set relativenumber
"---- Relative Number



"---pathogen---"
"---to install plugins---"
execute pathogen#infect()
filetype plugin indent on
"---pathogen---"



" --- Colors for tabs
:hi TabLineFill ctermfg=Black ctermbg=Cyan
:hi TabLineSel ctermbg=White ctermbg=Cyan
:hi Title ctermfg=Yellow
" --- Colors for tabs

" --- change the cursor chape ---
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" --- change the cursor chape ---
"
" search https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set ruler         " show the cursor position all the time
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set list listchars=tab:»·,trail:·




" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

