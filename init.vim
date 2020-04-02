" d2w delete 2w
" cis change inside
" yip yank in paragraph
" ct? change to ?

" Habit
let mapleader = " "

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" [Color Scheme]

colorscheme gruvbox

set number
set relativenumber
set list
set listchars=tab:▸\ ,eol:¬
set ignorecase
set smartcase
set cursorline
set ruler
set backspace=indent,eol,start
set autowrite
set autoread
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set undofile
set undodir=/tmp
" OS x copy sharing
set clipboard=unnamedplus
" Fixed moving up and down from NERDTree
let g:NERDTreeMapJumpNextSibling = '<Nop>'
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11

let g:wide_column = 1
let g:NERDTreeMapJumpPrevSibling = '<Nop>'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:AutoPairsMultilineClose=0
let g:AutoPairsMapSpace=0
let g:airline_powerline_fonts = 1

" Redefine trigger key
let g:user_emmet_leader_key=','

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



noremap <leader>a :NERDTreeToggle<cr>
nmap o o<Esc>
nmap O O<Esc>
nnoremap <Tab>   >>
vnoremap <Tab>   >><Esc>gv
nnoremap <S-Tab> <<
vnoremap <S-Tab> <<<Esc>gv
nnoremap <C-p> :FZF<cr>
"\\ Easy Motion
nmap <silent> gw <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
map <Leader> <Plug>(easymotion-prefix)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|build|public|lib|dist)|(\.(git|svn))$',
    \ 'file': 'tags\|tags.lock\|tags.temp',
\ }
