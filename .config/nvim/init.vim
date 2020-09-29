source $HOME/.config/nvim/vim-plug/plugins.vim

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

" airline config
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_section_z ="%3l/%L:%2v"
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#left_sep = ""
let g:airline#extensions#bufferline#right_sep = ""
let g:airline#extensions#bufferline#left_alt_sep =""
let g:airline#extensions#bufferline#right_alt_sep = ""
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#ale#enabled = 1 
