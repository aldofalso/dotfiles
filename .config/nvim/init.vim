
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

      Plug 'itchyny/lightline.vim'
      Plug 'morhetz/gruvbox'
      Plug 'jiangmiao/auto-pairs'
      Plug 'ap/vim-css-color'

call plug#end()

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

"colorscheme config
let g:lightline = { 'colorscheme': 'gruvbox', }

colorscheme gruvbox
