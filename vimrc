" Maintainer: Alex Alectic <alecticwp@gmail.com>

if exists("colors_name")
	finish
endif
colorscheme naquadria

scriptencoding utf-8
set backspace=2
set number
set noshowmatch
set history=50
set ruler
set showcmd
set incsearch
set autoindent
set smartindent
set cindent
set expandtab " spaces
"set noexpandtab " tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5 "minimal number of screen lines to keep above and below the cursor when using j, k
"set scrolljump=-50
set sidescroll=1
set sidescrolloff=10
set nocompatible
set laststatus=2
set t_Co=256
set nowrap
set termencoding=utf-8
set encoding=utf-8
set autochdir
set shell=/bin/bash
silent execute '!mkdir -p $HOME/.vim/tmp/{backup,swap,view,undo}'
set backupdir=$HOME/.vim/tmp/backup/
if has("vms")
	set nobackup    " do not keep a backup file, use versions instead
else
	set backup      " keep a backup file
endif
set wildignore+=*.so,*.zip,*.rar,*.tgz,*.tar,*.pyc,*~
set directory=$HOME/.vim/tmp/swap/
set viewdir=$HOME/.vim/tmp/view/
set undodir=$HOME/.vim/tmp/undo/
set undofile
set viminfo='50,n$HOME/.vim/tmp/viminfo
set updatetime=10000
set fileencodings=utf-8
set noshowmode
set title
set modeline
set ttyfast
set wildmenu
set wildmode=list:longest,full
"set list
set listchars=trail:\ ,tab:→\ ,extends:>,precedes:<
set fillchars+=stl:\ ,stlnc:\ ,vert:\|
"set linebreak
set showbreak=↳
"set lazyredraw
"set textwidth=79
"set wrapmargin=79
set formatoptions=qrn1
set splitright splitbelow
set shortmess+=afiIlmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
set clipboard=unnamed
set hidden
set colorcolumn=80
set completeopt-=preview
set completeopt=longest,menuone
set ballooneval
set cryptmethod=blowfish2
set guiheadroom=0
set omnifunc=javascriptcomplete#CompleteJS

" I got used to rangerfm
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

" when you select a function in omni menu and press enter,
" doesn't insert new line, instead it just selects the function
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" // seems to
"create issues with clang_completion

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
            \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <silent> <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

inoremap <C-u> <C-g>u<C-u>

if !has("gui_running")
    inoremap <C-@> <C-x><C-o>
endif


noremap <MiddleMouse> <NOP>
noremap <MouseUp> <NOP>
noremap <MouseDown> <NOP>
"nnoremap <PageUp> <NOP>
"nnoremap <PageDown> <NOP>
"inoremap <PageUp> <NOP>
"inoremap <PageDown> <NOP>
"vnoremap <PageUp> <NOP>
"vnoremap <PageDown> <NOP>
"nnoremap <UP> <NOP>
"nnoremap <DOWN> <NOP>
"nnoremap <LEFT> <NOP>
"nnoremap <RIGHT> <NOP>
"inoremap <UP> <NOP>
"inoremap <DOWN> <NOP>
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>
"vnoremap <UP> <NOP>
"vnoremap <DOWN> <NOP>
"vnoremap <LEFT> <NOP>
"vnoremap <RIGHT> <NOP>

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

if has('mouse')
    set mouse=""
endif

if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    if has("autocmd")
        filetype plugin indent on
        augroup vimrcEx
            "au!
            autocmd FileType text setl textwidth=79
            autocmd BufReadPost *
                        \ if line("'\"") > 1 && line("'\"") <= line("$") |
                        \   exe "normal! g`\"" |
                        \ endif
        augroup END
    endif
endif

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

" auto-add shebang
augroup Shebang
    au BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
    au BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
augroup END

"autocmd CursorMoved * exe printf('match IncSearch /\<%s\>/', expand('<cword>'))

" set colorscheme by filetype
"au FileType c colorscheme <c_colorscheme here>
"au FileType python colorscheme <python colorscheme here>

" auto leave insert mode
"au CursorHoldI * stopinsert
"
" auto leave insert mode when change focus
"au FocusLost * call feedkeys("\<C-\>\<C-n>")

" FIXME: broken function don't know why, it should have worked
"function! AutoLeaveInsertMode()
"    if v:insertmode
"        feedkeys("\<C-\>\<C-n>")
"    endif
"endfunction
"au FocusLost * call AutoLeaveInsertMode()

" ===== Vim Shortcuts ===== "
" Show syntax highlighting groups for word under cursor
nmap <C-S-I> :call <SID>SynStack() <CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

if has("gui_running")
    command! -nargs=0 -bar Update if &modified 
                \|    if empty(bufname('%'))
                    \|        browse confirm write
                    \|    else
                        \|        confirm write
                        \|    endif
                        \|endif
endif
nnoremap <silent> <C-S> :<C-u>Update <CR>

if !exists("*ReloadConfigs")
    function ReloadConfigs()
        source $MYVIMRC
        execute "colorscheme" g:colors_name
        if has("gui_running")
            source $MYGVIMRC
        endif
    endfunction
    command! Recfg call ReloadConfigs()
endif
nnoremap <F11> :Recfg<CR>

if has("gui_running")
    nnoremap <silent> <F10> :set guifont=* <CR>
endif

nnoremap <silent> <C-w>d :bdel <CR>

" Experimental tab navigation
nnoremap <silent> <C-t>h :tabprevious <CR>
nnoremap <silent> <C-t>l :tabnext <CR>
nnoremap <silent> <C-t>n :tabnew <CR>
nnoremap <silent> <C-t>d :tabclose <CR>
inoremap <silent> <C-t>h <Esc> :tabprevious <CR>i
inoremap <silent> <C-t>l <Esc> :tabnext <CR>i
inoremap <silent> <C-t>n <Esc> :tabnew <CR>
inoremap <silent> <C-t>d <Esc> :tabclose <CR>
" ----- </shortcuts> ----- "

" ----- <plugin> ----- "

" Airline related
let g:airline_theme = "naquadria"
"let g:airline_powerline_fonts = 1
"let g:airline_theme_patch_func = "AirlineThemePatch"

" UltiSnips related
let g:UltiSnipsEditSplit = "vertical"
"let g:UltiSnipsDontReverseSearchPath = "1"
" unfortunately I had to use these for jumping
" because c-j, c-k are used for pmenu in insert mode
let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"

" HTML related
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ColorHighlight related
let g:colorizer_auto_filetype = 'css,html,vim'
let g:colorizer_fgcontrast = 1
let g:colorizer_colornames = 0
let g:colorizer_x11_names = 1

" NERDTree related
let g:NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <silent> <F2> :NERDTreeToggle <CR>

" NERDCommenter related
nnoremap <silent> <C-Space> :call NERDComment(0, "toggle") <CR>

" Syntastic related
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
if has('gui_running')
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_warning_symbol = '⚠'
else
    let g:syntastic_error_symbol = 'X'
    let g:syntastic_warning_symbol = '!'
endif
let g:syntastic_enable_balloons = 0
"let g:syntastic_enable_highlighting = 0
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_jump=1
let g:syntastic_go_checkers = ['gofmt']
"let g:syntastic_python_checkers=['pep8']
let g:syntastic_java_checkers = ['']
let g:syntastic_html_checkers = ['']
let g:syntastic_css_checkers = ['prettycss --ignore suggest-relative-unit']
let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = '-W -Wall -std=gnu11'
let g:syntastic_c_check_header = 0 " normally should be set to 1
let g:syntastic_c_auto_refresh_includes = 0 " the same
let g:syntastic_c_remove_include_errors = 1 " I don't know why THE FUCK doesn't it work
let g:syntastic_c_include_dirs = [
            \ '/usr/i686-w64-mingw32/include/',
            \ '/usr/x86_64-w64-mingw32/include/',
            \ '/usr/share/arduino/hardware/tools/avr/lib/avr/include/',
            \ '/usr/lib/arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/include/',
            \ '/usr/lib/arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/include-fixed/',
            \ $HOME.'/usr/include/']

"cTags related
"au BufWritePost *.go silent! !ctags -R &

" TagBar related
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }
nnoremap <silent> <F3> :TagbarOpenAutoClose<CR>

" CtrlP related
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 'Etvh'
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_open_multiple_files = '0i'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_tabpage_position = "ac"
let g:ctrlp_extensions = ['tag', 'buffertag', 'line']
nnoremap <silent> <C-n> :CtrlPBuffer<CR>
nnoremap <silent> <C-l> :CtrlPLine<CR>
nnoremap <silent> <C-t>a :CtrlPTag<CR>
nnoremap <silent> <C-t>c :CtrlPBufTag<CR>

" Clang_Complete related
let g:clang_snippets = 0
let g:clang_snippets_engine = "ultisnips"
let g:clang_complete_auto = 0
" to be set depending on the filetype in case of using c++ as well
let g:clang_user_options = '-W -Wall -Wextra -std=gnu11
            \ -I/usr/i686-w64-mingw32/include/
            \ -I/usr/x86_64-w64-mingw32/include/
            \ -I/usr/share/arduino/hardware/tools/avr/lib/avr/include/
            \ -I/usr/lib/arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/include/
            \ -I/usr/lib/arduino/hardware/tools/avr/lib/gcc/avr/4.3.2/include/-fixed/'
let g:clang_complete_macros = 1
let g:clang_complete_patterns = 0

" Autoformat related
let g:formatprg_c = 'uncrustify'
let g:formatprg_args_c = '-q -c $HOME./.config/uncrustify.cfg --no-backup'

" jedi-vim related
let g:jedi#show_call_signatures = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#use_tabs_not_buffers = 0
"let g:jedi#completions_enable = 0

" vim-godef related
let g:godef_split=3

" Vundle related
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
"if executable('git')
"    Plugin 'tpope/vim-fugitive'
"endif
"Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
if executable('ctags')
    Plugin 'majutsushi/tagbar'
    Plugin 'vim-scripts/AutoTag'
endif
if executable('gocode')
    Plugin 'Blackrush/vim-gocode'
endif
Plugin 'Rip-Rip/clang_complete'
if executable('godef')
    Plugin 'dgryski/vim-godef'
endif
Plugin 'Chiel92/vim-autoformat'
Plugin 'davidhalter/jedi-vim'
Plugin 'mkitt/tabline.vim'
Plugin 'Raimondi/delimitMate'
filetype plugin indent on
" ----- </plugins> ----- "
