call plug#begin('~/.vim/plugged')

"basic behavior.
Plug 'tpope/vim-sensible'

"color theme
Plug 'morhetz/gruvbox'

"filetree
Plug 'preservim/nerdtree'

"fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git blame
Plug 'tpope/vim-fugitive'

call plug#end()

"init gruvbox colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

"map leader to ,
let mapleader = ","
"file tree browser - backslash
map \ :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>

"map ctrl-p to fzf (fuzzy file finding)
nmap <C-P> :FZF<CR>

" Auto-indent whole file
nmap <leader>= gg=G``

" Git blame
map <leader>g :Git blame<CR>

" Split screen
map <leader>v :vsp<CR>

"turn off bell
set belloff=all

