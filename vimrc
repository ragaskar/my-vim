call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'

call plug#end()

"init gruvbox colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

