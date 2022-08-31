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
	" Plug 'rust-lang/rust.vim'
	" Plug 'leafgarland/typescript-vim'
	"Plugin 'davidhalter/jedi-vim'
	"Plug 'Valloric/YouCompleteMe'
	Plug 'jceb/vim-orgmode'
	Plug 'neovim/nvim-lspconfig'
	" Extensions to built-in LSP, for example, providing type inlay hints
	Plug 'nvim-lua/lsp_extensions.nvim'
	Plug 'Chiel92/vim-autoformat'
	" Autocompletion framework for built-in LSP
	" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'nvim-lua/plenary.nvim'
    Plug 'scalameta/nvim-metals'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'


	call plug#end()

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o indentexpr=

endif
filetype plugin on    " required

syntax on

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

highlight CocFloating ctermbg=black
set directory=~/tmp
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=999
set colorcolumn=105
set nocindent
set smartindent
set autoindent
set foldmethod=syntax

" Move between windows with CTRL
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-G> <C-W><C-H>

