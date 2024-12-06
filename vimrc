syntax on
let mapleader=" "
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exe "nohlsearch"
set incsearch
set ignorecase
set smartcase
set smartindent

" word style
set guifont=Courier\ New:h10
" colorscheme desert

" tab to space
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2

noremap = nzR
noremap - Nzz
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-W><Left> :vertical resize -5<CR>
nnoremap <C-W><Right> :vertical resize +5<CR>
nnoremap <C-W><Up> :resize -5<CR>
nnoremap <C-W><Down> :resize +5<CR>



call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'puremourning/vimspector'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'


"  --------
"  coc
"  -------
let g:coc_global_extensions = [
 \ 'coc-json',
 \ 'coc-vimlsp']
set hidden
set updatetime=100
set shortmess+=c
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
	  \ CheckBackspace() ? "\<Tab>" :
	          \ coc#refresh()

function! CheckBackspace()abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
" Use `g`[ and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in locationlist
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)]
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
