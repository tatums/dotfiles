set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required






" Leader
let mapleader = " "
set list

" Map jk to ESC - to quickly exit insert mode "
inoremap jk <esc>


" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>



colorscheme molokai
let g:rehash256 = 1
"let g:molokai_original = 1


"colorscheme getafe
"colorscheme github

"syntax enable
"set background=dark
"colorscheme solarized

"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0


syntax on
set number
set t_Co=256
set tabstop=2 shiftwidth=2 expandtab


" leader mappings "
map <Leader>n :NERDTreeFind<CR>
map <Leader>h :NERDTreeToggle<CR>
map <Leader>b :BuffergatorToggle<CR>
" leader mappings "



" don't allow backspacing over everything in insert mode
set backspace=

" ---  Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
" ---  Remove trailing whitespace


"---- Relative Number
" set relativenumber
"---- Relative Number



"---pathogen---"
"---to install plugins---"
execute pathogen#infect()
filetype plugin indent on
"---pathogen---"



"" --- Colors for tabs
":hi TabLineFill ctermfg=Black ctermbg=Cyan
":hi TabLineSel ctermbg=White ctermbg=Cyan
":hi Title ctermfg=Yellow
"" --- Colors for tabs

" --- change the cursor chape ---
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" --- change the cursor chape ---

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



" Quicker window movement
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l


"copy and paste
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" Disable arrow keys in visual mode
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>



" Keep yanked lines after paste
vnoremap <leader>] "_dP


"  Down create .swp files
set noswapfile



augroup filetypedetect
au BufNewFile,BufRead *.js.erb set filetype=javascript
augroup end



autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
nnoremap <Leader>b :BuffergatorToggle<CR>

