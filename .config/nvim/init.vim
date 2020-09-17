
set encoding=utf-8				"encoding 
set number					"set number
set mouse=a					"enable mouse
set clipboard+=unnamedplus			"clipboard
set guicursor=a:blinkon100			"blink cursor
set noswapfile					"disable swap file
set smarttab                    		"smart tab     
set smartindent                 		"smart indent
set autoindent					"auto indent
set fileformat=unix				"file format
set laststatus=2
set statusline=
set statusline+=%F
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=%m
set statusline+=%=
set statusline+=[%{strlen(&fenc)?&fenc:'none'}]
set statusline+=\ 
set statusline+=[%{&ff}]
set statusline+=\ 
set statusline+=%l/%L
