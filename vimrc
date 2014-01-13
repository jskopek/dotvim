execute pathogen#infect()
syntax on
filetype plugin indent on

" Set a backup directory 
silent !mkdir ~/.vim/tmp > /dev/null 2>&1
set backupdir=~/.vim/tmp

" Source the vimrc file after saving it
" via: http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=migrations,*.pyc,node_modules,venv,compiled_css
