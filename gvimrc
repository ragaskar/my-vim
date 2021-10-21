" from https://stackoverflow.com/questions/3316244/set-gvim-font-in-vimrc-file -- Menlo on mac, inconsolata elsewhere. 
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h18
  elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
  endif
endif

"Flip background color on insert (see
"https://github.com/Peeja/insert_mode_background_color)
augroup HighlightOnInsert
  autocmd!
  autocmd InsertEnter * execute "highlight Normal guibg=" . g:insert_mode_background_color
  autocmd InsertLeave * execute "colorscheme " . g:colors_name
augroup END

" Change background color when inserting.
if has("gui_running")
  let g:insert_mode_background_color = "#18434E"
end
