" vim:fdm=marker
set nocompatible
filetype off
set timeoutlen=10

set rtp+=~/.vim/bundle/vundle/
" set ttimeoutlen=50
" set Search ctermbg=Yellow
" set Search ctermfg=White
call vundle#rc()

" Plugins {{{
" ====================Plugins=================
" This is the Vundle package, which can be found on GitHub.
" " For GitHub repos, you specify plugins using the
" " 'user/repository' format
Plugin 'gmarik/vundle'
"
" " We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
"
" " To get plugins from Vim Scripts, you can reference the plugin
" " by name as it appears on the site
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'KabbAmine/yowish.vim'

" " To get plugins from PluginSearch, you can reference the plugin
" " by name as it appears on the site
Plugin 'Buffergator'
Plugin 'jellybeans.vim'
Plugin 'SuperTab'
Plugin 'taglist.vim'
Plugin 'delimitMate.vim'

" " Color Plugins
Plugin 'w0ng/vim-hybrid'

" Coding Plugins
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-perl/vim-perl'
"

" ==================== End of Plugins===========
" }}}

filetype plugin indent on
" #set mouse=a
set modelines=1
syntax on
set laststatus=2
set cursorline
let g:Powerline_symbols = "fancy" 
autocmd InsertEnter * highlight CursorLine guibg=darkred guifg=fg
"autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#808080 guifg=fg

set foldmethod=syntax
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let sh_fold_enabled=1         " sh
set foldnestmax=10
set nofoldenable
set foldlevel=1
set hlsearch



" Mappings {{{
" ==================== Set Leader===========
" let mapleader="lead"
let mapleader="-"
" ==================== End Leader===========
" ==================== Set Mappings==========
nmap nton :NERDTree<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-t> :Tlist<cr>
" =====Fold Section =============
nmap <Space> za
" =====Fold Section =============
nmap was :set syntax=log<cr>
nmap httplog :set syntax=httplog<cr>
nmap r1 :set syntax=raslog<cr>
nmap db2diag :set syntax=db2diag<cr>
nmap cognos :set syntax=cognos<cr>
nmap synoff :set syntax=on<cr>
nmap tn :tabn<cr>
nmap tp :tabp<cr>
nmap <Leader>term :ConqueTermSplit bash<cr>
nmap <Leader>vterm :ConqueTermVSplit bash<cr>
inoremap fj <Esc>l
inoremap jf <Esc>l
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
nmap <F5> :pu=strftime('%c')<cr>
" ==================== End Mapping===========
" }}}


" Plugin Settings {{{ 
" Plugin - Airline
""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme ='cobalt2'
" DO NOT REMOVE COMMENT FROM g:airline_powerline_fonts...yet
" let g:airline_powerline_fonts = 1

" Plugin - SuperTab 
""""""""""""""""""""""
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabMappingForward ="<s-tab>"
" let g:SuperTabMappingBackward = "<s-c-tab>"
"inoremap <Nul> <C-X><C-O>
"inoremap <C-Space> <C-X><C-O>

" Plugin - NERDTree
""""""""""""""""""""""
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.svn$', '\~$', '.DS_Store']
" let NERDTreeHijackNetrw = 0
let NERDTreeMinimalUI=1
let NERDTreeChDirMode = 2
let g:NERDTreeMapJumpPrevSibling = ''
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeWinPos="right"
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:netrw_banner = 0


" Plugin - taglist
""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Use_Right_Window=0
" }}}
set t_Co=256
" ==================== Colors Schemes===========
"colorscheme codeschool
" colorscheme distinguished
" colorscheme badwolf
"" colorscheme darkblue
" colorscheme elflord
colorscheme jellybeans
" colorscheme railscasts
" colorscheme twilight
" colorscheme vividchalk
" colorscheme yowish
"

" ==================== Colors Override CursorLine Value===========
hi CursorLine ctermfg=White ctermbg=24 cterm=bold guifg=white guibg=yellow gui=bold
" ==================== End of Colors===========
"
"
" =========== Auto filedetect - Load Syntax==========
au BufRead,BufNewFile SystemOut* set syntax=log
au BufRead,BufNewFile messages.log set syntax=log
au BufRead,BufNewFile cogserver.log set syntax=cognos
au BufRead,BufNewFile *_cq_KfwServices_* set syntax=raslog
au BufRead,BufNewFile *_cq_5* set syntax=raslog
au BufRead,BufNewFile *_hd_5* set syntax=raslog
au BufRead,BufNewFile *_ms_5* set syntax=raslog
au BufRead,BufNewFile *_cms_5* set syntax=raslog
au BufRead,BufNewFile *_sy_java_5* set syntax=raslog
au BufRead,BufNewFile *_ux_kuxagent_5*.log      set syntax=raslog
au BufRead,BufNewFile *_lz_klzagent_5*.log      set syntax=raslog
au BufRead,BufNewFile *_nt_kntcma_5*.log      set syntax=raslog
au BufRead,BufNewFile db2diag.log set syntax=db2diaglog
au BufRead,BufNewFile cogserver.log set syntax=cognos
au BufRead,BufNewFile *.sql set syntax=sql
au BufRead,BufNewFile *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
" ===========  End Auto filedetect - Load Syntax==========
