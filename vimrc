call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()

"init gruvbox colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

"file tree browser - backslash
map \ :NERDTreeToggle<CR>

