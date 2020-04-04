" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Vim-Plug config start
call plug#begin(expand('~/.vim/plugged'))
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'junegunn/goyo.vim'
call plug#end()
" Vim-Plug config end

colorscheme nord

let mapleader = "\\"

let g:rust_recommended_style = 0

set nocompatible
set noeb vb t_vb=

syntax on

set mouse=a

set t_Co=16

set spelllang=en_us
set tabstop=2
set shiftwidth=2
set number relativenumber
set autoindent
set showmode
set ttyfast

" Toggle relative and absolute line numbers when switching in and out
" of insert mode, and when switching focus
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
