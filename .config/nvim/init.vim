" TODO
" add keybind of vscode
" make a .md file just for reference 
" learn the keybinds 
" organize the init.vim 
" remove the unnessory plugins
" learn a bit of lua towrite the config in lua 
" neovim config 

"               Plugins 

" pre configs for coq.nvim
let g:coq_settings = {'auto_start': 'shut-up'}

call plug#begin()

" Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'sheerun/vim-polyglot'
" Plug ‘psliwka/vim-smoothie’
" Plug 'tpope/vim-commentary'
Plug 'glepnir/dashboard-nvim'
" Plug 'mhinz/vim-startify'
" Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'luochen1990/rainbow'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'
" Plug 'Th3Whit3Wolf/one-nvim'
" Plug 'navarasu/onedark.nvim'

" for coq.nvim 
" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**

Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc

call plug#end()

"               config


set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
" set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
" set clipboard=unnamedplus   " using system clipboard
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" color schemes
set updatetime=300

if (has("termguicolors"))
 set termguicolors
 endif

 syntax enable
colorscheme onedark

" colorscheme nord
" open new split panes to right and below
set splitright
set splitbelow
set title

"                plugins config 

" let g:lightline = {
"   \ 'colorscheme': 'onedark',
"   \ }
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowHidden=1
"let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
"let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:dashboard_default_executive='telescope'
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
let g:rainbow_active = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

let g:indent_guides_enable_on_vim_startup = 1

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\ '',
\ '                 TIME TO CREATE BUGS XD                ',
\]
"

"           my key bindings

noremap <Leader>f :<C-u>ClangFormat<CR>

" keybinds 

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-j> :sp<CR>:terminal<CR>

inoremap ;; <Esc>
nnoremap <Space> i

nnoremap <A-Space> <C-w>l

nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

nnoremap <C-v> yy
"nnoremap <S->
