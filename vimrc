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
Plugin 'VisIncr'
Plugin 'ctrlp.vim'
Plugin 'Auto-Pairs'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'Indent-Guides'
Plugin 'rizzatti/funcoo.vim'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
if v:version >= 704
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'SirVer/ultisnips'
endif
Plugin 'matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'git://github.com/aperezdc/vim-template.git'
Plugin 'cscope.vim'
Plugin 'git://github.com/chazy/cscope_maps'
Plugin 'Mark'
Plugin 'TagHighlight'
Plugin 'ifdef-highlighting'
" Plugin 'lua-support'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
Plugin 'rdnetto/YCM-Generator'
Plugin 'ervandew/supertab'
Plugin 'DoxygenToolkit.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'airblade/vim-gitgutter'
" Plugin 'oplatek/Conque-Shell'
Plugin 'Conque-GDB'
" Plugin 'bbchung/clighter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Global vim configuration
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
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
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts=1
let g:airline_theme='luna'
" let g:Powerline_symbols='fancy' 
" let g:airline_section_x=[]
" let g:airline_section_z=[]
let g:airline_section_warning=[]

" THE-NERD-TREE configuration
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>tf :NERDTreeFind<CR>

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

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0

" cscope
nmap <C-s>s :cs find s <C-R>=expand("<cword>")<CR><CR>    
nmap <C-s>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-s>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-s>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-s>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-s>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-s>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-s>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <F7> :cw<CR>
nmap <F8> :ccl<CR>
nmap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
  \:!cscope -Rbq -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>

nmap <F10> :b#<CR>

" Mark
nmap <F2> <Leader>m
nmap <F3> <Leader>#
nmap <F4> <Leader>*
let g:mwDefaultHighlightingPalette = 'extended'
" nmap * <Plug>MarkSearchOrCurNext 
" nmap # <Plug>MarkSearchOrCurPrev

" ######################## YouCompleteMe  ###########################
if v:version >= 704
let g:ycm_global_ycm_extra_conf = '~/workspace/env/conf/ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
endif

" ######################## UltiSnips  ###########################
if v:version >= 704
" let g:UltiSnipsExpandTrigger="<C-TAB>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/workspace/env/conf/snips']
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
endif


" if v:version >= 704
    " let g:clighter_libclang_file = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" end
" ######################## DoxygenTookit ###########################
" let g:DoxygenToolkit_authorName = 'qiyl@certusnet.com.cn' 
" let g:DoxygenToolkit_authorTag = '\author 	   '
" let g:DoxygenToolkit_dateTag = '\date 	   '
" let g:DoxygenToolkit_paramTag_pre = '\param	   '
" let g:DoxygenToolkit_returnTag = '\return      '
" let g:DoxygenToolkit_blockHeader = '***************************************************************************'
" let g:DoxygenToolkit_blockFooter = '***************************************************************************'




" ######################## own over  ###########################

