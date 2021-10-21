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
