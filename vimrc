set nocompatible               " be iMproved
filetype off                   " required!
	
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" ######################## own start ###########################
" Plugin 'git://github.com/Lokaltog/vim-powerline.git'
Plugin 'Tagbar'
Plugin 'Rename'
Plugin 'VisIncr'
Plugin 'ctrlp.vim'
Plugin 'Auto-Pairs'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'Indent-Guides'
Plugin 'rizzatti/funcoo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
if v:version >= 704
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
endif
Plugin 'matchit.zip'
Plugin 'bling/vim-airline'
Plugin 'aperezdc/vim-template'
Plugin 'cscope.vim'
Plugin 'chazy/cscope_maps'
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
Plugin 'mfukar/robotframework-vim'
" Plugin 'oplatek/Conque-Shell'
Plugin 'Conque-GDB'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'fatih/vim-go'
Plugin 'nathanalderson/yang.vim'

"------------ themes start ----------
Plugin 'mhartington/oceanic-next'
Plugin 'bzx/vim-theme-pack'
"------------ themes over  ----------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------------ encode settings start ----------
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"------------ encode settings over  ----------

set cm=blowfish "set encrypt method to blowfish

"------------ GUI settings start ----------
syntax enable
set incsearch
set viminfo+=!  " Save and restore global variables.
set t_Co=256
colorscheme tango2
" colorscheme OceanicNext
set background=dark
" set cursorline
"colorscheme tir_black 
set guioptions-=T " hide toolbar
set guioptions-=L " hide left scroll bar
set guioptions-=r " hide right scroll bar
set completeopt=menu

"+++++++ airline configuration ++++
set laststatus=2
let g:airline_theme='luna'
" let g:airline_theme='oceanicnext'
let g:airline_section_warning=[]
"------------ GUI settings over  ----------

"set shiftwidth=4
"set tabstop=4

" Window pointer move configuration
nmap <C-h> <C-w>h  
nmap <C-j> <C-w>j  
nmap <C-k> <C-w>k  
nmap <C-l> <C-w>l 

" THE-NERD-TREE configuration
nmap <C-n>t :NERDTreeToggle<CR>
nmap <C-n>f :NERDTreeFind<CR>
let g:NERDTreeWinPos = "right"

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

" GitGutter 
let g:gitgutter_max_signs = 5000

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

nmap <F7> :botright cwindow<CR>
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
let g:ycm_global_ycm_extra_conf = '~/workspace/env/config/ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
endif

" ######################## UltiSnips  ###########################
if v:version >= 704
" let g:UltiSnipsExpandTrigger="<C-TAB>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/workspace/env/config/snips']
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
endif

" ######################## OmniShark  ###########################
let g:OmniSharp_selector_ui = 'ctrlp'
augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END

" if v:version >= 704
    " let g:clighter_libclang_file = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" end


" ######################## own over  ###########################

