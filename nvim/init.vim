call plug#begin('~/.vim/plugged')
 
let g:coc_global_extensions = ['coc-java', 'coc-go', 'coc-json', 'coc-xml', 'coc-yaml', 'coc-markdownlint', 'coc-rust-analyzer', 'coc-toml', 'coc-lua']
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'editorconfig/editorconfig-vim'

let g:rustfmt_autosave = 1
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
Plug 'cespare/vim-toml'

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

let $FZF_DEFAULT_COMMAND = 'rg --files'
let $FZF_DEFAULT_OPTS= '--reverse'
let g:fzf_layout = {'window': {'width':1.0, 'height':0.9}}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
let g:lightline = {
  \ 'colorscheme': 'tokyonight',
  \ 'active':{
  \  'left': [['mode','paste'], ['readonly','relativepath','modified','cocstatus','gitbranch']]
  \ },
  \ 'component_function': {
  \  'cocstatus':'coc#status',
  \  'gitbranch':'FugitiveHead',
  \ }
  \}


Plug 'ghifarit53/tokyonight-vim'

call plug#end()

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number

set encoding=utf-8
set termencoding=utf-8
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:tokyonight_style =  'night'
let g:tokyonight_enable_italics = 1

colorscheme tokyonight

syntax on
