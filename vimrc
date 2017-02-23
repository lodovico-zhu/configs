set nocompatible        
set autoread          
set shortmess=atI    


set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cursorline

set nobackup  
set nowb  
set noswapfile  

set paste  
set showmatch 


syntax enable  
syntax on  

"检测文件类型  
filetype on  
" 针对不同的文件类型采用不同的缩进格式    
filetype indent on                 
"允许插件    
filetype plugin on  
"启动自动补全  
filetype plugin indent on  



call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-filesearch'
Plug 'stegtmeyer/find-complete'
Plug 'altercation/vim-colors-solarized'
"Plug 'vim-scripts/Drawit'
"Plug 'Valloric/YouCompleteMe'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'taglist.vim'
"Plug 'majutsushi/tagbar'
"Plug 'dyng/ctrlsf.vim'
"Plug 'rdnetto/YCM-Generator',{ 'branch': 'stable'}
Plug 'morhetz/gruvbox'
Plug 'rking/ag.vim'
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
cmap w!! w !sudo tee % > /dev/null

map<silent><leader>s :source ~/dev/vim/.vimrc<CR>
map<silent><leader>e :e ~/dev/vim/.vimrc<CR>
map<silent><leader>f :NERDTreeToggle<CR>
"let NERDTreeChDirMode=2
"let NERDTreeShowBookmarks=1
"let NERDTreeMinimalUI=1

"set relativenumber

set background=dark
colorscheme solarized
iabbr " ""<esc>i
