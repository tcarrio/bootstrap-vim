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

" Jira Plugins
" Plugin 'paulkass/jira-vim' " Requires Python 3, requests, vim-python, etc.
Plugin 'mnpk/vim-jira-complete'

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

" General vim rules
syntax on
set tabstop=2

" NOTE: Navigational mappings
" Moving between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Resizing panes
map <S-j> <C-W>-
map <S-k> <C-W>+
map <S-h> <C-W>>
map <S-l> <C-W><
" NOTE: autocomplete with <C-n>
map <C-b> :NERDTreeToggle<CR>
map <C-f> :ALEFindReferences<CR>

" NOTE: JIRA Mappings
let jira_url = ''
let jira_username = ''
let jira_password = ''
source ~/.vim/.jira_secret
" vim-jira-complete
let g:jiracomplete_url = jira_url
let g:jiracomplete_username = jira_username
let g:jiracomplete_password = jira_password
"" jira-vim
" let g:jiraVimDomainName = jira_url
" let g:jiraVimEmail = jira_username
" let g:jiraVimToken = jira_password

imap <silent> <unique> <leader>j <Plug>JiraComplete

" NOTE: ALE configuration for linting, formatting, etc.
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint']
\}
let g:ale_fix_on_save = 1

