set nocompatible
filetype on
"set shell=zsh\ -i
set clipboard=unnamed

" Spell Check
set spelllang=en

" 256 colours
 let &t_Co=256

set showcmd
" Highlights current line
set cursorline

" Include closing brackets and parenthesis
set showmatch

" Search while typing
set incsearch
" Highlight every string matched for search
set hlsearch

" Case insensitive searching
set ignorecase
set smartcase

"Allow backspacing over tabs and eol
set backspace=indent,eol,start
filetype plugin indent on

" Tabs are now spaces
set tabstop=2 shiftwidth=2 expandtab


" Removes trailing backspace
autocmd BufWritePre * %s/\s\+$//e

"Line number
set number

" Include vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Syntax highlight
syntax on

" Go Plugin
Plugin 'fatih/vim-go'

" Javascript Plugin
Plugin 'pangloss/vim-javascript'

" Typescript Plugin
Plugin 'leafgarland/typescript-vim'
autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript

" RAML plugin
Plugin 'IN3D/vim-raml'

" DocBlockr Equivalent
Plugin 'heavenshell/vim-jsdoc'

" AutoComplete
Plugin 'vim-scripts/dbext.vim'
Plugin 'lifepillar/vim-mucomplete'
set completeopt+=menuone
set completeopt+=noinsert
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#delayed_completion = 1

" Make it pretty
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

" Terraform integration
Plugin 'hashivim/vim-terraform'
let g:terraform_align=1

" VueJS
Plugin 'posva/vim-vue'


" Commenter
Plugin 'tpope/vim-commentary'

" Explorer
Plugin 'preservim/nerdtree'

" Disable swap
set noswapfile

" Tabs to spaces
set tabstop=2 shiftwidth=2

" End vundle
call vundle#end()

" Adds filename to bottom of file
set statusline="%F%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

"Open nerdtree
map <C-n> :NERDTreeToggle<CR>

"set statusline +=%{resolve(expand('%:p'))}\ %*
