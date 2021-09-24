call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"init gruvbox colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

"file tree browser - backslash
map \ :NERDTreeToggle<CR>

"map ctrl-p to fzf (fuzzy file finding)
nmap <C-P> :FZF<CR>


