execute pathogen#infect()

:filetype plugin on
set nocompatible
set autoindent
set autoread "auto re-read changed file
set showcmd "show partial commands as you type them
set hidden "new buffers can be opened without old ones being saved
set backspace=
set shiftwidth=4
set tabstop=4
set binary

map <silent> `1 :nohl<cr>
nnoremap <silent> <cr> :nohl<cr><cr>
let g:tagbar_width=30

autocmd FileType python set expandtab backspace=indent
autocmd FileType thrift set syn=cpp
autocmd BufRead,BufNewFile *.html set syn=tt2html
autocmd BufRead,BufNewFile *.tt set syn=tt2html
autocmd BufRead,BufNewFile *.tpl set syn=tt2html
autocmd BufRead,BufNewFile *.cfg.tpl set syn=tt2

" JavaScript
autocmd FileType javascript set shiftwidth=4
autocmd FileType javascript set tabstop=4

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set list
set listchars=tab:»·,trail:·

" shift tabs using TAB or Shift+TAB
map <tab> v>
map <S-tab> v<

map <F1> :TagbarToggle<cr>
map <F2> :tabprev<cr>
map <F3> :tabnext<cr>
map <F4> :tabnew 

map <F5> :set nolist<cr>
map <F6> :set list<cr>
map <F7> :set noautoindent<cr>:set nosmartindent<cr>
map <F8> :set autoindent<cr>:set smartindent<cr>

" Perl smart (Eclipse)
vmap <silent> () :s/^/#/gi<cr>:nohl<cr>
vmap <silent> )( :s!^\(\s*\)# \=!\1!gi<cr>:nohl<cr>

" Python simple
" vmap <silent> () :s/^/#/gi<cr>:nohl<cr>
" vmap <silent> )( :s/^#\=//gi<cr>:nohl<cr>

" C++
vmap <silent> {} :s/^/\/\//gi<cr>:nohl<cr>
vmap <silent> }{ :s/^\/\///gi<cr>:nohl<cr>

" SQL
vmap <silent> <> :s!^\(\s*\)!\1-- !gi<cr>:nohl<cr>
vmap <silent> >< :s!^\(\s*\)-- \=!\1!gi<cr>:nohl<cr>

sy on
hi Search ctermbg=240
set hlsearch
hi MatchParen ctermbg=242 ctermfg=228
set t_Co=16
hi OverLength ctermbg=238
hi Visual ctermbg=242
match OverLength /\%79v.\+/

set bg=dark
hi Comment    ctermfg=39
hi Statement  ctermfg=214
hi PreProc    ctermfg=133
hi SpecialKey ctermfg=33
hi Search     ctermbg=darkblue ctermfg=yellow

set matchpairs+=<:> "Подсвечивать парные скобки для HTML
set nobackup "Не создавать резервных копий файлов
set noswapfile "Не использовать swap-файл
set ignorecase "Игнорировать регистр символов при поиске

"Меню изменения кодировки чтения из файла
set wildmenu
set wcm=<Tab>
menu Encoding.Read.CP1251   :e ++enc=cp1251<CR>
menu Encoding.Read.CP866    :e ++enc=cp866<CR>
menu Encoding.Read.KOI8-U   :e ++enc=koi8-u<CR>
menu Encoding.Read.UTF-8    :e ++enc=utf-8<CR>
map <F9> :emenu Encoding.Read.<TAB>

"Меню изменения кодировки записи в файл (Ctrl-F9)
set wildmenu
set wcm=<Tab>
menu Encoding.Write.CP1251    :set fenc=cp1251<CR>
menu Encoding.Write.CP866     :set fenc=cp866<CR>
menu Encoding.Write.KOI8-U    :set fenc=koi8-u<CR>
menu Encoding.Write.UTF-8     :set fenc=utf-8<CR>
map <C-F9> :emenu Encoding.Write.<TAB>

:set enc=utf8
