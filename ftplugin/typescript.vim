if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setl softtabstop=2
setl shiftwidth=2

" Autoformat when :w
autocmd BufWritePre <buffer> Autoformat
