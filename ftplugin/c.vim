if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" just in case I change my mind and I want to use 2 spaces
"setl tabstop=2
"setl shiftwidth=2
"setl softtabstop=2

autocmd BufWritePre <buffer> silent Autoformat

