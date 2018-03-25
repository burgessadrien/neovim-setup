" Install Vim Plug if not installed
   if empty(glob('~/.config/nvim/autoload/plug.vim'))
     silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     autocmd VimEnter * PlugInstall
   endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Aesthetics.
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sonph/onehalf'
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-dark'

" Syntax.
Plug 'vim-syntastic/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'

" Functional.
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'brooth/far.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'thinca/vim-quickrun'
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'sunaku/vim-shortcut'
Plug 'honza/vim-snippets'
Plug 'noahfrederick/vim-laravel'
Plug 'noahfrederick/vim-composer'


" Auto-completion.
Plug 'zchee/deoplete-jedi'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Movement.


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color Scheme
" minimalist
"set t_Co=256
"syntax on
"colorscheme minimalist

hi Comment cterm=italic
set background=dark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'
colorscheme space-vim-dark

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
nmap <C-b> :NERDTreeToggle<cr>

" Deoplete.
let g:deoplete#enable_at_startup = 1

" Airline.
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" CtrlP file search"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Undotree.
nmap <C-A-z> :UndotreeShow<cr>


" Movement.
" Mouse Support.
set mouse=a

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number
"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>

" Keyboard shortcuts.

" Resetting keyboard shortcuts for cut/copy/paste to ctrl x/c/v  -  use q for
" visual mode instead of v
source $VIMRUNTIME/mswin.vim
behave mswin

" disable swap file warning
set shortmess+=A
