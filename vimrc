" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Set different colorscheme when editing go files
colorscheme nord

" force vim to use same 16 colors as terminal
" set t_Co=16

" Vim-Plug config start
call plug#begin(expand('~/.vim/plugged'))
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'junegunn/goyo.vim'
	Plug 'frazrepo/vim-rainbow'
	Plug 'airblade/vim-gitgutter'
call plug#end()
" Vim-Plug config end

let mapleader = "\\"

let g:rust_recommended_style = 0
let g:rainbow_active = 1

let g:rainbow_ctermfgs = [
			\ 'blue',
			\ 'darkmagenta',
			\ 'yellow',
			\ 'black',
			\ 'red',
			\ 'green',
			\ 'darkyellow',
			\ 'cyan',
			\ 'darkgreen',
			\ ]

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCommentEmptyLines = 1

set nocompatible
set noeb vb t_vb=

syntax on

set mouse=a

set number
set spelllang=en_us
set tabstop=2
set shiftwidth=2
set autoindent
set showmode
set ttyfast

hi MatchParen cterm=none ctermbg=black ctermfg=none

" Toggle relative and absolute line numbers when switching in and out
" of insert mode, and when switching focus

" set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END
