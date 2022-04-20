syntax on

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

let mapleader=" "

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
"set smartcasdd
set nohlsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set autoread 
set signcolumn=yes
set number relativenumber
set nu rnu
set updatetime=100

colorscheme gruvbox

" remaps of COC for Go-To-Definition
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Remaps for splits and windows
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>vs :wincmd v<CR>
map <leader>hs :wincmd s<CR>
noremap <leader>pv :NERDTreeFind<bar> :vertical resize 30<CR>

" git log
noremap <leader>gg :Gllog --graph --pretty<bar> :res 70<CR>


" file quick find
nnoremap <C-p> :Telescope find_files<cr>
nnoremap <leader>f <cmd>Telescope live_grep<cr>
nnoremap <leader>fw <cmd>Telescope grep_string<cr>

