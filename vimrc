
call pathogen#infect()
call pathogen#helptags()

let g:glsl_default_version = 'glsl450'
" let g:glsl_file_extensions = '*.glsl, *.vsh, *.fsh, *.vert, *.tesc, *.tese, *.geom, *.frag, *.comp'

set nocompatible              " be iMproved required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
Bundle 'Valloric/YouCompleteMe'

call vundle#end()            " required



filetype plugin indent on    " required


syntax on
set number
filetype plugin indent on
autocmd FileType make set noexpandtab|set autoindent|set tabstop=4
autocmd FileType c    set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType cpp  set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType tex  set tabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType s    set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType javascript   setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType gpl  set tabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType y    set tabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType l    set tabstop=2|set shiftwidth=2|set expandtab|set autoindent
" au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
au BufRead,BufNewFile *.gpl set filetype=gpl
" set syntax=glsl
autocmd FileType glsl set tabstop=2|set shiftwidth=2|set expandtab|set autoindent
:hi Comment ctermfg=cyan cterm=none
:hi Error ctermbg=white ctermfg=red cterm=underline
:hi Constant ctermfg=yellow cterm=none
:hi Identifier ctermfg=white ctermbg=black cterm=underline
let g:ycm_global_ycm_extra_conf = ''
