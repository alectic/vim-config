if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

"autocmd BufWritePre <buffer> silent Autoformat

" Java Complete related
nmap <silent> <F5> <Plug>(JavaComplete-Imports-Add)
nmap <silent> <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <silent> <F7> <Plug>(JavaComplete-Imports-AddMissing)
