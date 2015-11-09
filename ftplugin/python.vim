if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let python_highlight_all = 1

" Autoformat when :w
autocmd BufWritePre <buffer> Autoformat
