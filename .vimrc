set nocompatible              " be iMproved, required
set nomodeline                " Mode lines are insecure
set hidden
set splitbelow
set splitright
set exrc
set secure
set mouse=n
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
" Using plug.vim now
if has("nvim")
	call plug#begin(stdpath('data') . '/plugged')

	" The following are examples of different formats supported.
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-sleuth'
	Plug 'rust-lang/rust.vim'
	Plug 'leafgarland/typescript-vim'
	"Plugin 'davidhalter/jedi-vim'
	"Plug 'Valloric/YouCompleteMe'
	Plug 'junegunn/fzf'
	" Plug 'alok/notational-fzf-vim'
	Plug 'bling/vim-bufferline'
	Plug 'jceb/vim-orgmode'
	Plug 'vim-airline/vim-airline'
	Plug 'szymonmaszke/vimpyter' 
	"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'peitalin/vim-jsx-typescript'
	Plug 'hashivim/vim-terraform'
	Plug 'jparise/vim-graphql'
	Plug 'tikhomirov/vim-glsl'
	Plug 'neovim/nvim-lspconfig'
	" Extensions to built-in LSP, for example, providing type inlay hints
	Plug 'nvim-lua/lsp_extensions.nvim'
	Plug 'Chiel92/vim-autoformat'
	" Autocompletion framework for built-in LSP
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	" Flutter
	Plug 'nvim-lua/plenary.nvim'
	Plug 'akinsho/flutter-tools.nvim', {'branch': 'main'}
	" Godot
	Plug 'habamax/vim-godot'

	call plug#end()

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o indentexpr=

	let g:bufferline_echo = 0
	let g:bufferline_pathshorten = 0
	autocmd VimEnter *
	  \ let &statusline='%{bufferline#refresh_status()}'
		\ .bufferline#get_status_string()


endif
filetype plugin on    " required

syntax on
nnoremap <c-f> :NV<CR>
let g:rust_recommended_style = 1

colorscheme desert

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

autocmd Filetype systemverilog set shiftwidth=2
autocmd Filetype systemverilog set expandtab
autocmd BufWritePre *.rs :Autoformat

highlight CocFloating ctermbg=black
set directory=~/tmp
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=999
set colorcolumn=105
set noswapfile
set nocindent
set smartindent
set autoindent
set foldmethod=syntax

" Move between windows with CTRL
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-G> <C-W><C-H>

let g:coq_settings = { 'auto_start': v:true, 'display.pum.fast_close': v:false }
