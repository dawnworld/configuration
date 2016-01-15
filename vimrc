set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ======================== OWN VIM PLUGIN START ========================
Plugin 'bzx/vim-theme-pack'
Plugin 'Tagbar'
Plugin 'ctrlp.vim'
Plugin 'Auto-Pairs'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'airblade/vim-gitgutter'
Plugin 'cscope.vim'
Plugin 'chazy/cscope_maps'
Plugin 'matchit.zip'
Plugin 'Mark'
Plugin 'bling/vim-airline'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'queyenth/oxeded.vim'
Plugin 'jlund3/colorschemer'
if v:version >= 704
		Plugin 'Valloric/YouCompleteMe'
		Plugin 'SirVer/ultisnips'
endif

" ======================== OWN VIM PLUGIN END ========================


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

" ======================== PLUGIN CONF START ========================
" Global vim configuration
" Fix Chinese show issue
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set t_Co=256

syntax enable
highlight Search guibg='Purple' guifg='NONE'
set viminfo+=!  " Save and restore global variables.
"set background=dark
colorscheme lucid
"colorscheme termschool
"colorscheme oxeded

set guioptions-=T " hide toolbar
set guioptions-=L " hide left scroll bar
set guioptions-=r " hide right scroll bar
set completeopt=menu

" Indent guides plugin configuratin
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"airline configuration
set laststatus=2
let g:airline_theme='luna'
"let g:airline#extensions#hunks#enabled = 0
"let g:airline_enable_branch = 1
let g:airline_section_warning=[]
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#hunks#non_zero_only = 0
"let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" comment
nmap cc <Leader>c<space>

" THE-NERD-TREE configuration
nmap <C-n>t :NERDTreeToggle<CR>
nmap <C-n>f :NERDTreeFind<CR>

" Tagbar plugin configuration
let g:tagbar_left = 1
let g:tagbar_sort = 0
nmap <Leader>rt :TagbarToggle<CR>

" Window pointer move configuration
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l 

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0

" cscope
nmap <C-v>s :cs find s <C-R>=expand("<cword>")<CR><CR>    
nmap <C-v>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-v>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-v>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-v>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-v>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-v>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-v>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <F7> :cw<CR>
nmap <F8> :ccl<CR>
nmap <F9> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
  \:!cscope -Rbq -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>
set nocscopeverbose " Fix Line42 dumplicate error

nmap <F10> :b#<CR>

" Mark
nmap <C-m>m <Leader>m
nmap <C-m>f <Leader>#
nmap <C-m>b <Leader>*
let g:mwDefaultHighlightingPalette = 'extended'

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o
" ======================== PLUGIN CONF END ========================
