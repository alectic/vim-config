if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let python_highlight_all = 1

au BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\py_compile.compile(r'%')\"
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufRead *.py nmap <F8> :!python %<CR>
