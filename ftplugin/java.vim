if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

"autocmd BufWritePre <buffer> silent Autoformat

" Java Complete related
nmap <silent> <F5> <Plug>(JavaComplete-Imports-AddMissing)
imap <silent> <F5> <Plug>(JavaComplete-Imports-AddMissing)

nmap <silent> <F6> :JCimportsRemoveUnused<cr>
imap <silent> <F6> :JCimportsRemoveUnused<cr>
