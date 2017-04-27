" Maintainer: Alexandru Dreptu <alexdreptu@gmail.com>

if exists("colors_name")
	finish
endif

if has("gui_running")
    colorscheme naquadria
else
    colorscheme pablo
endif

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
"set noswapfile " disabled due to high disk activity when updatetime is set to a low value
set directory=$HOME/.vim/tmp/swap/
set viewdir=$HOME/.vim/tmp/view/
if has("persistent_undo")
    set undodir=$HOME/.vim/tmp/undo/
    set undofile
    set undolevels=1000 " How many undos
    set undoreload=10000 " number of lines to save for undo
endif
set viminfo='50,n$HOME/.vim/tmp/viminfo
"set updatetime=2000 " this value only in combination with 'set noswapfile'
set fileencodings=utf-8
set noshowmode
"set showmode
"set showtabline=2
set title
set modeline
set ttyfast
set wildmenu
set wildmode=list:longest,full
"set list
set listchars=trail:\ ,tab:→\ ,extends:⟶,precedes:⟵
set fillchars+=stl:\ ,stlnc:\ ,vert:\│
"set linebreak
set showbreak=↳
"set lazyredraw
"set textwidth=79
"set wrapmargin=79
set formatoptions=qrn1
set splitright splitbelow
set shortmess+=afiIlmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
set nofoldenable
set clipboard=unnamed
set hidden
set colorcolumn=80
set completeopt-=preview
set completeopt=longest,menuone
set cryptmethod=blowfish2
set guiheadroom=0
set autoread
set report=99999 " temporarily till I know what to do about it
"set foldmethod=syntax " really slow especially for omnicompletion
"set timeoutlen=1000
set relativenumber

" statusline related
let g:currentmode={
            \ 'n'  : 'Normal',
            \ 'no' : 'N·Operator Pending',
            \ 'v'  : 'Visual',
            \ 'V'  : 'V·Line',
            \ '' : 'V·Block',
            \ 's'  : 'Select',
            \ 'S'  : 'S·Line',
            \ '' : 'S·Block',
            \ 'i'  : 'Insert',
            \ 'R'  : 'Replace',
            \ 'Rv' : 'V·Replace',
            \ 'c'  : 'Command',
            \ 'cv' : 'Vim Ex',
            \ 'ce' : 'Ex',
            \ 'r'  : 'Prompt',
            \ 'rm' : 'More',
            \ 'r?' : 'Confirm',
            \ '!'  : 'Shell',
            \}

function! FileSize()
    let bytes = getfsize(expand('%:p'))
    if (bytes >= 1024)
        let kbytes = bytes / 1024
    endif
    if (exists('kbytes') && kbytes >= 1000)
        let mbytes = kbytes / 1000
    endif

    if bytes <= 0
        return 'null'
    endif

    if (exists('mbytes'))
        return mbytes . 'MB'
    elseif (exists('kbytes'))
        return kbytes . 'KB'
    else
        return bytes . 'B'
    endif
endfunction

set statusline=%#StatusLineMode#[%{toupper(g:currentmode[mode()])}]
set statusline+=\ %#StatusLine#%F
set statusline+=\ %#StatusLineInfo#[%{FileSize()}] " output buffer's file size
set statusline+=\ %#StatusLineReadOnly#%r
set statusline+=\ %#StatusLineChange#%m
set statusline+=%=
if isdirectory($HOME."/.vim/bundle/ale")
    set statusline+=\ %{ALEGetStatusLine()}
endif
set statusline+=\ %#StatusLineInfo#%Y
set statusline+=\ %#StatusLineInfo#[L=%l:C=%c]
set statusline+=\ [%p]

hi! link StatusLineMode StatusLineNormal
autocmd! InsertEnter * hi! link StatusLineMode StatusLineInsert
autocmd! InsertLeave * hi! link StatusLineMode StatusLineNormal

set omnifunc=javascriptcomplete#CompleteJS

" I got used to rangerfm
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

" when you select a function in omni menu and press enter,
" doesn't insert new line, instead it just selects the function
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>" // seems to
"create issues with clang_completion

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<cr>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
            \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<cr>'

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <silent> <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<cr>'

inoremap <C-u> <C-g>u<C-u>

if !has("gui_running")
    inoremap <C-@> <C-x><C-o>
endif

"noremap <Leader>y "*y
"noremap <Leader>p "*p

noremap <MiddleMouse> <NOP>
noremap <MouseUp> <NOP>
noremap <MouseDown> <NOP>
nnoremap <PageUp> <NOP>
nnoremap <PageDown> <NOP>
inoremap <PageUp> <NOP>
inoremap <PageDown> <NOP>
vnoremap <PageUp> <NOP>
vnoremap <PageDown> <NOP>
nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
vnoremap <UP> <NOP>
vnoremap <DOWN> <NOP>
vnoremap <LEFT> <NOP>
vnoremap <RIGHT> <NOP>

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
        "filetype plugin indent on " automatically handled by vim-plug
        augroup vimrcEx
            au!
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

au CursorHold * silent checktime " this in combination with 'set autoread' and 'set updatetime=2000'

" ===== Vim Shortcuts ===== "
" Show syntax highlighting groups for word under cursor
nmap <C-S-I> :call <SID>SynStack() <cr>
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
nnoremap <silent> <C-S> :<C-u>Update <cr>

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
nnoremap <silent> <F11> :Recfg<cr>

if has("gui_running")
    nnoremap <silent> <F10> :set guifont=* <cr>
endif

nnoremap <silent> <C-w>d :bdel <cr>

nnoremap <silent> g<S-l> :tabm +1 <cr>
nnoremap <silent> g<S-h> :tabm -1 <cr>
" ----- </shortcuts> ----- "

" ----- <plugin> ----- "

" UltiSnips related
let g:UltiSnipsEditSplit = "vertical"
"let g:UltiSnipsDontReverseSearchPath = "1"
" unfortunately I had to use these for jumping
" because c-j, c-k are used for pmenu in insert mode
let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"

" NERDTree related
let g:NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <silent> <F2> :NERDTreeToggle <cr>

" NERDCommenter related
nnoremap <silent> <C-Space> :call NERDComment(0, "toggle") <cr>

" ALE related
let g:ale_linters = {
            \ 'python': ['pylint'],
            \ 'rust': ['rustc'],
            \}
"let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

if has('gui_running')
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚠'
else
    let g:ale_sign_error = 'X'
    let g:ale_sign_warning = '!'
endif

if has('gui_running')
    let g:ale_statusline_format = ['✗ %d', '⚠ %d', '⬥ ok']
else
    let g:ale_statusline_format = ['X %d', '! %d', '⬥ ok']
endif

" TagBar related
let g:tagbar_compact = 1
let g:tagbar_show_visibility = 1
"let g:tagbar_show_linenumbers = -1

if executable('ctags')
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
    nnoremap <silent> <F3> :TagbarOpenAutoClose<cr>
endif

" CtrlP related
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 'Etvh'
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_open_multiple_files = '2i'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_tabpage_position = "ac"
let g:ctrlp_extensions = ['tag', 'buffertag', 'line']
nnoremap <silent> <C-b> :CtrlPBuffer<cr>
nnoremap <silent> <C-l> :CtrlPLine<cr>
nnoremap <silent> <C-t>a :CtrlPTag<cr>
nnoremap <silent> <C-t>c :CtrlPBufTag<cr>

" Clang_Complete related
let g:clang_snippets = 0
let g:clang_snippets_engine = 'ultisnips'
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
if executable('clang-format')
    let g:formatdef_clang = '"clang-format"'
    let g:formatters_c = ['clang']
endif
if executable('autopep8')
    let g:formatdef_py_beautify = '"autopep8 -"'
    let g:formatters_python = ['py_beautify']
endif
if executable('ocp-indent')
    let g:formatdef_ocaml = '"ocp-indent"'
    let g:formatters_ocaml = ['ocaml']
endif
if executable('js-beautify')
    let g:formatdef_js_beautify = '"js-beautify -f - -q -s 2 -t false -p true -m 2 -P false -E false -a false -b collapse"'
    let g:formatters_javascript = ['js_beautify']
    let g:formatdef_html_beautify = '"html-beautify -f - -q -s 2 -p true -m 1"'
    let g:formatters_html = ['html_beautify']
    let g:formatdef_css_beautify = '"css-beautify -f - -q -s 2 -p true -m 1"'
    let g:formatters_css = ['css_beautify']
endif
if executable('tsc')
    let g:formatdef_ts_beautify = '"tsfmt -r --stdin"'
    let g:formatters_typescript = ['ts_beautify']
endif

" TSuquyomi related
let g:tsuquyomi_disable_quickfix = 1

" Jedi related
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 1
let g:jedi#show_call_signatures = "2"

" GitGutter related
"let g:gitgutter_sign_added = 'A'
"let g:gitgutter_sign_modified = 'M'
"let g:gitgutter_sign_removed = 'D'

" EasyMotion related
let g:EasyMotion_smartcase = 1
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>r <Plug>(easymotion-repeat)
nmap f <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" vim-go related
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_operators = 1

" Slimv related
let g:slimv_unmap_cr = 1
let g:slimv_unmap_tab = 1
let g:slimv_unmap_space = 1
let g:paredit_electric_return = 0
"let g:paredit_shortmaps = 0

" rust.vim related
let g:rustfmt_autosave = 1
let g:rust_fold = 0
let g:rustfmt_fail_silently = 1

" vim-racer related
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" OCaml related
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
    execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
    execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
    let l:dir = s:opam_share_dir . "/merlin/vim"
    execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
    " Respect package order (merlin should be after ocp-index)
    if count(s:opam_available_tools, tool) > 0
        call s:opam_configuration[tool]()
    endif
endfor

" Automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins and Scripts
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
if executable('ctags')
    Plug 'majutsushi/tagbar'
    Plug 'vim-scripts/AutoTag'
endif
if executable('go')
    Plug 'fatih/vim-go'
endif
if executable('clang')
    Plug 'Rip-Rip/clang_complete'
endif
Plug 'davidhalter/jedi-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'mkitt/tabline.vim'
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
if executable('tsc')
    "Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'
endif
if executable('tsserver')
    Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
    Plug 'Shougo/vimproc.vim', { 'do': 'make' } | Plug 'Quramy/tsuquyomi'
endif
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'posva/vim-vue'
Plug 'easymotion/vim-easymotion'
if executable('racket')
    Plug 'wlangstroth/vim-racket'
endif
Plug 'kovisoft/slimv'
if executable('nim')
    Plug 'zah/nim.vim'
    "Plug 'baabelfish/nvim-nim'
endif
if executable('rustc')
    Plug 'rust-lang/rust.vim'
endif
if executable('racer')
    Plug 'racer-rust/vim-racer'
endif
if executable('ocaml')
    Plug 'let-def/ocp-indent-vim'
endif
call plug#end()
