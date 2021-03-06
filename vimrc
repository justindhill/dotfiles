" Color scheme
colorscheme molokai

" Automatically reload files
set autoread

" Line numbers
set number

" Always show status bar
set laststatus=2

" Set swap location for better performance over the network
set dir=~/.vimswap

" Syntax highlighting
syntax on

" Search stuff
set ic
set hlsearch
set incsearch

" Tab width
set tabstop=4
set shiftwidth=4
set expandtab

" No line wrapping
set nowrap

" jk for esc
imap jk <esc>

" JSON formatting!
nmap <c-j> :%!python -m json.tool<cr>

" CtrlP
let g:ctrlp_map = '<c-t>'

" Ignores
set wildignore+=art,img,.git,*.swf,font-awesome

" Airline
let g:airline_theme='light'
let g:airline_powerline_fonts=0

" Pathogen
execute pathogen#infect()

" Split directions
set splitright
set splitbelow

" Turn on auto-indent
filetype plugin indent on

" Listchars
set listchars=tab:→\ ,eol:$,

" Printing
set printoptions=paper:A4,portrait:y,duplex:short,wrap:y,number:n,syntax:n,left:5pc

" Strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

let g:jsx_ext_required = 0

" .gradle files are groovy syntax!
au BufRead,BufNewFile *.gradle set filetype=groovy

