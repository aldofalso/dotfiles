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
set laststatus=2				"statusline
set statusline=					"statusline
set statusline+=%F				"file name
set statusline+=\ 
set statusline+=%m				"modified flag
set statusline+=%=
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] "file encoding
set statusline+=\ 
set statusline+=[%{&ff}]			"file format
set statusline+=\ 
set statusline+=%l/%L\          		"line number                       
