set nocompatible              " be iMproved, required
filetype off                  " required
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" !! Install plugins here

" File explorer
Plugin 'scrooloose/nerdtree'

" Status bar
Plugin 'vim-airline/vim-airline'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Syntax/Indent/Compiler/etc Support for Many Languages
Plugin 'sheerun/vim-polyglot'

" Async Linting https://github.com/dense-analysis/ale/blob/master/supported-tools.md
Plugin 'w0rp/ale'

" VSCode Language Server Support (TS, JS, etc.)
Plugin 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Syntax on
syntax on

" Navigational mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" NOTE: autocomplete with <C-n>
map <C-f> :NERDTreeToggle<CR>

