if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" use tabs instead of spaces
setl noexpandtab

setl omnifunc=go#complete#Complete

if executable('goimports')
    let g:gofmt_command = "goimports"
endif

" auto lint when :w
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" auto gofmt when :w
autocmd BufWritePre <buffer> Fmt

" ===== Functions ===== "
" ???
" ===== End Functions ===== "

" ===== Command Abbreviations ===== "
ca im Import
ca dr Drop
" ===== End Command Abbreviations ===== "
"
" ===== Shortcuts ===== "
" setting gocode activation (omnifunc) to ctrl+space
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

nnoremap <C-x> :Godoc <CR>
" ===== End Shortcuts ===== "
