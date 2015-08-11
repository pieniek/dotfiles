set binary

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-commentary'
Plugin 'sjl/gundo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'


call vundle#end()
filetype plugin indent on

let mapleader = ","

syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile
set noshowmode

set hidden
set autoread

set list
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮
set shiftround
set linebreak

set display+=lastline
set wildmenu
set wildmode=list:full
set wildignorecase

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set virtualedit+=block

set t_Co=256
set laststatus=2
set splitbelow
set splitright


" custom mappings
nnoremap ; :
vnoremap ; :

noremap <Up> k
noremap <Down> j
noremap <Left> h
noremap <Right> l

" leader mappings
nnoremap <leader><leader> <c-^>

inoremap <leader>. <Esc>
vnoremap <leader>. <Esc>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :bd<CR>

noremap <leader>v <C-w>v
noremap <leader>s <C-w>s

nnoremap <leader>rv :e ~/.vimrc<CR>
nnoremap <leader>rt :e ~/.tmux.conf<CR>
nnoremap <leader>rz :e ~/.zshrc<CR>
nnoremap <leader>rb :e ~/.config/bspwm/bspwmrc<CR>
nnoremap <leader>rs :e ~/.config/sxhkd/sxhkdrc<CR>
nnoremap <leader>rc :e ~/.config/compton.conf<CR>
nnoremap <leader>rn :e ~/.ncmpcpp/config<CR>
nnoremap <leader>rp :e ~/bin/panel<CR>

autocmd! bufwritepost ~/.vimrc source ~/.vimrc


let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

colorscheme gruvbox