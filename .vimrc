set tabstop=4
"syntax enable
"set expandtab
"set number
"set autoindent
"inoremap { {<CR>}<Esc>ko
"execute pathogen#infect()
"call pathogen#helptags()
"imap <C-Return> <CR><CR><C-o>k<Tab>
"set shiftwidth=4
set number

call plug#begin('~/.vim/plugged')

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'iCyMind/NeoSolarized'

call plug#end()

