set nocompatible               " be iMproved
filetype off                   " required!
	
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!

" ######################## own start ###########################
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'bzx/vim-theme-pack'
Bundle 'Tagbar'
Bundle 'OmniCppComplete'
Bundle 'SuperTab'
Bundle 'Auto-Pairs'
Bundle 'The-NERD-Commenter'
Bundle 'Indent-Guides'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

"Bundle 'altercation/vim-colors-solarized'
"Bundle 'rizzatti/funcoo.vim'
"Bundle 'rizzatti/dash.vim'

" Global vim configuration
syntax on
set guioptions-=T " hide toolbar
set guioptions-=L " hide left scroll bar
set guioptions-=r " hide right scroll bar
"set shiftwidth=4
"set tabstop=4

" Window pointer move configuration
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l 

" vim-powerline configuration
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8

" vim-theme-pack configuration
"colorscheme tir_black 
colorscheme tango2

" Tagbar plugin configuration
let g:tagbar_left = 1
nmap <Leader>rt :TagbarToggle<CR>

" SuperTab plugin configuration
let g:SuperTabDefaultCompletionType="<C-X><C-N>"
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
let g:SuperTabRetainCompletionType=2
let g:SuperTabLongestEnhanced = 1

" the NERD Comment plugin configuration
nmap cc <Leader>c<space>

" Indent guides plugin configuratin
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" ######################## own over  ###########################

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

