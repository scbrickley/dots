" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Set different colorscheme when editing go files
colorscheme nord

" Vim-Plug config start
call plug#begin(expand('~/.vim/plugged'))
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'frazrepo/vim-rainbow'
	Plug 'airblade/vim-gitgutter'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
	Plug 'racer-rust/vim-racer'
	Plug 'rust-lang/rust.vim'
	Plug 'haya14busa/is.vim'
call plug#end()
" Vim-Plug config end

let mapleader = "\\"

let g:rainbow_active = 1

augroup Racer
	autocmd!
	autocmd FileType rust nmap <buffer> gd <Plug>(rust-def)
augroup END

let g:racer_cmd="$HOME/.cargo/bin/racer"

let g:rust_recommended_style = 0

let g:rainbow_ctermfgs = [
			\ 'black',
			\ 'blue',
			\ 'darkmagenta',
			\ 'yellow',
			\ 'red',
			\ 'green',
			\ 'darkyellow',
			\ 'cyan',
			\ 'darkgreen',
			\ 'red',
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
set nowrap
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set directory=~/.vim/swap

hi MatchParen cterm=none ctermbg=black ctermfg=none
hi Search cterm=none ctermbg=black ctermfg=white
hi IncSearch cterm=none ctermbg=3 ctermfg=black

nnoremap <Leader>r * :%s///g<Left><Left>
nnoremap <Leader>rc * :%s///gc<Left><Left><Left>

xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Toggle relative and absolute line numbers when switching in and out
" of insert mode, and when switching focus

" set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END
