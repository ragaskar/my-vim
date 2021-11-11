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

" [+space for whitespace & [+q for quickfix nav.
Plug 'tpope/vim-unimpaired'

" statusline plugin
Plug 'vim-airline/vim-airline'

"for commenting out in various langs
Plug 'preservim/nerdcommenter'

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

""""" KEYBINDINGS
let mapleader = ","
" Auto-indent whole file
nmap <leader>= gg=G``

" Make Y consistent with D and C (ie, Y is yank til end of line)
map Y           y$

" Copy current file path to system pasteboard
map <leader>c :let @* = expand("%:p")<CR>:echo "Copied: ".expand("%:p")<CR>
map <leader>C :let @* = expand("%:p").":".line(".")<CR>:echo "Copied: ".expand("%:p").":".line(".")<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" Git blame
map <leader>g :Git blame<CR>

" Split screen
map <leader>v :vsp<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

"turn off bell
set belloff=all

"handle vim swap files nicely.
runtime swap-config.vim

"2 space tabs
set tabstop=2
set shiftwidth=2
set expandtab

"Show line numbers
set number
