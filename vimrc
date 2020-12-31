syntax on
filetype plugin indent on

" Set a backup directory 
" silent !mkdir ~/.vim/tmp > /dev/null 2>&1 set backupdir=~/.vim/tmp
set noswapfile

" Source the vimrc file after saving it
" via: http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
if has("autocmd")
        autocmd bufwritepost .vimrc source $MYVIMRC
endif

" CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set wildignore+=migrations,*.pyc,node_modules,venv,compiled_css,compiled_js,compiled,src,build

" General
set nowrap
set number
colorscheme delek

" Set up python spacing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Spelling
setlocal spell spelllang=en_us

let g:EasyGrepFilesToExclude=".git,.pyc"

autocmd Filetype html setlocal ts=4 sts=4 sw=4

" Vim-Plug Plugins
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'ap/vim-css-color'
call plug#end()
