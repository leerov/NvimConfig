autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
    \| endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/907th/vim-auto-save'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on

let g:auto_save_write_all_buffers = 1
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeQuitOnOpen = 1

:colorscheme material
:set number
:set relativenumber
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set encoding=UTF-8
:set autoindent


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-b> :!bash build.sh<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-@> coc#refresh()
