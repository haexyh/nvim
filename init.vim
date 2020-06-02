call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'trevordmiller/nova-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'OmniSharp/omnisharp-vim'
" Plug 'ekalinin/Dockerfile.vim'
" Themes
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'whatyouhide/vim-gotham'
Plug 'wadackel/vim-dogrun'
" call PlugInstall to install new plugins
call plug#end()

" basics
filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
"set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


" preferences
inoremap jk <ESC> 

" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$

" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" plugin settings

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" usd tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" NerdTree
" In order to easily access nerdtree, it is recommended that you setup the ctrl-n binding to toggle the nerdtree side-panel
nmap <C-n> :NERDTreeToggle<CR>

" Emmet
" The default keystroke to activate the Emmet plugin is “<C-y>, ” which is a little difficult to type. To fix this problem, you may replace the <C-y> with a <C-a> mapping
let g:user_emmet_expandabbr_key = '<C-a>,'

" Easymotion
map <Leader> <Plug>(easymotion-prefix)
" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
"set background=dark
colorscheme ron 

hi Normal guibg=NONE ctermbg=NONE
