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
Plug 'Raimondi/delimitMate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'

" Functional.
Plug 'rkulla/pydiction'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'easymotion/vim-easymotion'
Plug 'sunaku/vim-shortcut'
Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/denite.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'brooth/far.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'noahfrederick/vim-laravel'
Plug 'noahfrederick/vim-composer'
Plug 'jwalton512/vim-blade'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'


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

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:deoplete#enable_at_startup = 1
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
colorscheme gruvbox

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
nmap <C-b> :NERDTreeToggle<cr>

" CtrlP file search"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" indent guide.
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" editorconfig.
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" indent guide.
let g:indent_guides_enable_on_vim_startup = 1

" Undotree.
nmap <C-A-z> :UndotreeToggle<cr>
" Move to vimrc faster.
map <leader> :ev $MYVIMRC <leader>

" Movement.
"
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
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>= :vertical resize +5<CR>
map <leader>- :vertical resize -5<CR>


" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd vimenter * NERDTree

" Keyboard shortcuts.
" Change leader key
let mapleader = "1"

" Set write shortcut.
map <C-s> :w <cr>
" Resetting keyboard shortcuts for cut/copy/paste to ctrl x/c/v  -  use q for
" visual mode instead of v
source $VIMRUNTIME/mswin.vim
behave mswin
"Make it easy to edit VIMRC file"
nmap <Leader>ev :tabedit $MYVIMRC<cr>


" disable swap file warning
set shortmess:A
