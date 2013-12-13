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
Bundle 'SuperTab'
Bundle 'Auto-Pairs'
Bundle 'clang-complete'
Bundle 'The-NERD-Commenter'
Bundle 'Indent-Guides'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'Syntastic'
Bundle 'https://github.com/davidhalter/jedi-vim.git'
Bundle 'matchit.zip'
Bundle 'git://github.com/aperezdc/vim-template.git'

" Global vim configuration
syntax enable
colorscheme tango2
"colorscheme tir_black 
set guioptions-=T " hide toolbar
set guioptions-=L " hide left scroll bar
set guioptions-=r " hide right scroll bar
set completeopt=menu

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

" Tagbar plugin configuration
let g:tagbar_left = 1
nmap <Leader>rt :TagbarToggle<CR>

" SuperTab plugin configuration
let g:SuperTabDefaultCompletionType="<C-X><C-N>"
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
let g:SuperTabRetainCompletionType=2
let g:SuperTabLongestEnhanced = 1

" the NERD Comment plugin configuration
" let NERD_java_alt_style=1
let NERDSpaceDelims = 1
nmap cc <Leader>c<space>

" Indent guides plugin configuratin
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" clang-complete configuration
" let g:clang_complete_copen=1
" let g:clang_hl_errors=1
let g:clang_snippets = 1
let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_conceal_snippets=1
" let g:clang_exec="clang"
let g:clang_user_options=""
let g:clang_auto_user_options="path, .clang_complete"
let g:clang_use_library=1
let g:clang_library_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"
let g:clang_sort_algo="priority"
" let g:clang_complete_macros=1
" let g:clang_complete_patterns=0

" Dash plugin configuratin
nmap <c-d> :Dash<CR>

" vim-templates configuration
" let g:templates_plugin_loaded = 1
" let g:templates_no_autocmd = 1

"let filetype_h='objc'
" ######################## own over  ###########################


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

