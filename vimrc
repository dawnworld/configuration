set nocompatible               " be iMproved
filetype off                   " required!
	
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" ######################## own start ###########################
" Plugin 'git://github.com/Lokaltog/vim-powerline.git'
Plugin 'bzx/vim-theme-pack'
Plugin 'Tagbar'
Plugin 'SuperTab'
Plugin 'Auto-Pairs'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'Indent-Guides'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
if v:version >= 704
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
endif
Plugin 'matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'git://github.com/aperezdc/vim-template.git'
Plugin 'cscope.vim'
Plugin 'git://github.com/chazy/cscope_maps'
Plugin 'Mark'
Plugin 'TagHighlight'
Plugin 'ifdef-highlighting'
" Bundle 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Global vim configuration
syntax enable
set viminfo+=!  " Save and restore global variables.
colorscheme tango2
" set cursorline
"colorscheme tir_black 
set guioptions-=T " hide toolbar
set guioptions-=L " hide left scroll bar
set guioptions-=r " hide right scroll bar
set completeopt=menu
" set hlsearch

"set shiftwidth=4
"set tabstop=4

" Window pointer move configuration
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l 

"airline configuration
set laststatus=2
set t_Co=256
" set guifont=DejaVu_Sans_Mono_for_Powerline:h11
" set guifont=Droid_Sans_Mono_for_Powerline:h11
" set guifont=Inconsolata_for_Powerline:h11
" set guifont=Meslo_for_Powerline:h11
" set guifont=Meslo_for_Powerline
" set guifont=Meslo_LG_S_DZ_Regular_for_Powerline
" set guifont=FuraMono-Regular_Powerline
set encoding=utf8
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts=1
let g:airline_theme='luna'
" let g:Powerline_symbols='fancy' 
" let g:airline_section_x=[]
" let g:airline_section_z=[]
let g:airline_section_warning=[]

" THE-NERD-TREE configuration
nmap <Leader>nt :NERDTreeToggle<CR>

" Tagbar plugin configuration
let g:tagbar_left = 1
let g:tagbar_sort = 0
nmap <Leader>rt :TagbarToggle<CR>

" Vim Template
let g:username = "qiyl"
let g:email = "qiyl@certusnet.com.cn"
let g:license = "CERTUSNET"

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
" let g:clang_snippets = 1
" let g:clang_auto_select=1
" let g:clang_complete_auto=1
" let g:clang_periodic_quickfix=0
" let g:clang_snippets=1
" let g:clang_snippets_engine="clang_complete"
" let g:clang_conceal_snippets=1
" let g:clang_exec="clang"
" let g:clang_user_options=""
" let g:clang_auto_user_options="path, .clang_complete"
" let g:clang_use_library=1
" let g:clang_library_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"
" let g:clang_sort_algo="priority"
" let g:clang_complete_macros=1
" let g:clang_complete_patterns=0

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0

" Dash plugin configuratin
nmap <c-d> :Dash<CR>

" cscope
nmap <F7> :cw<CR>
nmap <F8> :ccl<CR>
nmap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
  \:!cscope -Rbq -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>


" Mark
nmap <F2> <Leader>m
nmap <F3> <Leader>#
nmap <F4> <Leader>*
let g:mwDefaultHighlightingPalette = 'extended'
" nmap * <Plug>MarkSearchOrCurNext 
" nmap # <Plug>MarkSearchOrCurPrev

if v:version >= 704
let g:ycm_global_ycm_extra_conf = '~/workspace/env/conf/ycm_extra_conf.py'
endif

" ######################## own over  ###########################

