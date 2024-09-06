" Автоматическая установка плагинов при первом запуске
" Этот код автоматически установит плагины, которые еще не были установлены,
" при первом запуске Vim, что позволяет управлять зависимостями легче.
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
    \| endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Инициализация плагинов
call plug#begin('~/.local/share/nvim/plugged')

" Подключение популярных плагинов
Plug 'preservim/nerdtree'                
Plug 'vim-airline/vim-airline'           
Plug 'kaicataldo/material.vim', { 'branch': 'main' } 
Plug 'jiangmiao/auto-pairs'              
Plug '907th/vim-auto-save'               
Plug 'voldikss/vim-floaterm'             
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'           
Plug 'Rip-Rip/clang_complete'
Plug 'mhinz/vim-startify'
call plug#end()

" Включение поддержки плагинов по типу файла
filetype plugin on



" Настройки плагинов

let g:auto_save_write_all_buffers = 1        
let g:webdevicons_enable_nerdtree = 1        
let g:NERDTreeQuitOnOpen = 1                  
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeHighlightFolders = 1

"Clang-completer
" Включить дополнительные подсказки (аргументы функций, шаблонов и т.д.)
let g:clang_snippets=1
" Использоать ultisnips для дополнительных подскахок (чтобы подсказки шаблонов
" автогенерации были в выпадающих меню)
let g:clang_snippets_engine = 'ultisnips'
" Периодически проверять проект на ошибки
let g:clang_periodic_quickfix=1
" Подсвечивать ошибки
let g:clang_hl_errors=1
" Автоматически закрывать окно подсказок после выбора подсказки
let g:clang_close_preview=1                                              
" По нажатию Ctrl+F проверить поект на ошибки
map <c-f> :call g:ClangUpdateQuickFix()<cr>

" Настройки Floaterm (плавающий терминал)
let g:floaterm_width = 0.8                     
let g:floaterm_height = 0.4                    
let g:floaterm_position = 'bottom'              

" Цветовая схема
colorscheme material                            

" Включаем bash-подобное дополнение командной строки
set wildmode=longest:list,full

" Основные настройки редактирования
set guifont=Hurmit\ Nerd\ Font:h11
set noswapfile                                  
set number                                      
set relativenumber                               
set smarttab                                    
set tabstop=4                                   
set shiftwidth=4                                
set softtabstop=4                               
set encoding=UTF-8                              
set autoindent                                  
set belloff=all

" Запустить мейк по f5
nnoremap <F5> :FloatermNew make<CR>

" Сочетания клавиш для NERDTree и терминала
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <S-Z> :NERDTreeToggle<CR>
nnoremap <S-F> :NERDTreeFind<CR>
nnoremap <S-B> :!bash build.sh<CR>
nnoremap <S-T> :FloatermToggle<CR> 

" Новые сочетания клавиш
nnoremap <C-w> :q<CR>          
nnoremap <S-o> :FZF<CR>
nnoremap <S-,> :e ~/.config/nvim/init.vim<CR> 

" Копирование и вставка как в GUI
vmap <C-c> "+y<Esc>i 
vmap <C-x> "+d<Esc>i 
imap <C-v> "+pi 
imap <C-v> <Esc>"+pi 
inoremap <C-a> <Esc>ggVG 

" Копирование в системный буфер обмена
noremap <Leader>y "+y 
noremap <Leader>p "+p 
noremap <Leader>Y "*y 
noremap <Leader>P "*p 

" Открытие сплитов с помощью Shift + Ctrl + стрелочек
nnoremap <C-L> :vsplit<CR> 
nnoremap <C-K> :split<CR> 


" devicons: reasonable defaults from webinstall.dev/vim-devicons
"source ~/.vim/plugins/devicons.vim

