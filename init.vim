" Install Vim Plug if not installed
   if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall
 endif
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Non-editing plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'henrik/vim-indexed-search'

" File manipulation
Plug 'tpope/vim-eunuch'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Error detection
Plug 'w0rp/ale'

" Editor Features
Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'

" Completion
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'zchee/deoplete-jedi'
if has('nvim')
	Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

" Syntax highlighting
Plug 'hdima/python-syntax'

" Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Clipboard Settings
set clipboard=unnamedplus
" Copy to system clipboard
vnoremap <leader>y  "y
vnoremap <leader>yy "yy
" Cut to system clipboard
vnoremap <leader>v "v
" Paste from system clipboard
vnoremap <leader>p "p


" Aesthetics
set encoding=utf8
colorscheme gruvbox
set background=dark

" Settings for tabs
set tabstop=4
set shiftwidth=4
set expandtab
set number

" Keyboard Shortcuts
" Leader shortcuts
let mapleader = "1"
map <leader> :ev $MYVIMRC <leader>
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Shortcuts for system clipboard
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


" disable swap file warning
set shortmess:A

" Airline settings
let g:airline_theme='badwolf'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline#extensions#ale#enabled=1

" Movement
set mouse=a

" Nerdtree settings
map <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '⇁'
let g:NERDTreeDirArrowCollapsible = '↴'

" FZF settings
map <C-p> :Files<CR>

" Ale settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>'

" Deoplete settings
let g:deoplete#enable_at_startup = 1

" Vim indent guides settings
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1

" GitGutter settings
map <C-g> :GitGutterToggle<CR>
