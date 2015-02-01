syn keyword     goKeyword   var
syn keyword     goKeyword2  interface
syn keyword     goTodo      NOTE

syn match   goFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([vTtbcdoqxXUeEfgGsp]\|\[\^\=.[^]]*\]\)" containedin=goString,goRawString

syn match   goOps           display '[@!?&%$|<>^~;:,.=*+-]'
syn match   goOps2          display '[][(){}]'
syn match   goFuncDec       /^func\>/
syn match   goCustomParen   "?=("
syn match   goCustomFunc    "\w\+\s*(\@=" contains=goCustomParen,goFuncDec
syn match   goPackage       "\w\(\w\)*\.[^<]"he=e-2,me=e-2 contains=ALLBUT,Float

hi def link goCustomFunc    goFunction
