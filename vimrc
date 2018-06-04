set nocompatible        
set autoread          
set shortmess=atI    


set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cindent
set cursorline

set nobackup  
set nowb  
set noswapfile  

"set paste  
set showmatch 


syntax enable  
syntax on  

filetype on  
filetype indent on                 
filetype plugin on  
filetype plugin indent on  



call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'stegtmeyer/find-complete'
"Plug 'altercation/vim-colors-solarized'
"Plug 'vim-scripts/Drawit'
"Plug 'Valloric/YouCompleteMe'
" On-demand loading
Plug 'jeetsukumaran/vim-filesearch'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/taglist.vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'majutsushi/tagbar'
"Plug 'dyng/ctrlsf.vim'
"Plug 'rdnetto/YCM-Generator',{ 'branch': 'stable'}
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
call plug#end()

"let g:tagbar_ctags_bin='ctags'

" Add support for markdown files in tagbar.
"let g:tagbar_type_markdown = {
"    \ 'ctagstype': 'markdown',
"    \ 'ctagsbin' : '~/.vim/markdown2ctags.py',
"    \ 'ctagsargs' : '-f - --sort=yes',
"    \ 'kinds' : [
"        \ 's:sections',
"        \ 'i:images'
"    \ ],
"    \ 'sro' : '|',
"    \ 'kind2scope' : {
"        \ 's' : 'section',
"    \ },
"    \ 'sort': 0,
"\ }
"
"
"
let g:ctrlp_max_files=0
let Tlist_Use_Right_Window=1
cmap w!! w !sudo tee % > /dev/null

map<silent><leader>s :source ~/.vimrc<CR>
map<silent><leader>e :e ~/.vimrc<CR>
map<silent><leader>f :NERDTreeToggle<CR>
map<silent><leader>t :TlistToggle<CR>
map<silent><leader>p :set paste<CR>


"let g:AutoPairsShortcutToggle = 
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i
""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {<CR>}<ESC>O


""function! SkipPair()  
""    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
""        return "\<ESC>la"  
""    else  
""        return "\t"  
""    endif  
""endfunction 
""inoremap <TAB> <c-r>=SkipPair()<CR>

"let NERDTreeChDirMode=2
"let NERDTreeShowBookmarks=1
"let NERDTreeMinimalUI=1

"set relativenumber

set background=dark
colorscheme gruvbox 

