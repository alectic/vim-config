syn keyword     goKeyword       var func
syn keyword     goInterface     interface
syn keyword     goTodo          NOTE

syn match   goFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([vTtbcdoqxXUeEfgGsp]\|\[\^\=.[^]]*\]\)" containedin=goString,goRawString
syn match   goOperator      display "[.,:;]"

syn match   goFuncDec       /^func\>/
syn match   goCustomFunc    "\w\+\s*(\@=" contains=goCustomParen,goFuncDec
syn match   goPackage       "\w\(\w\)*\.[^<]"he=e-2,me=e-2 contains=ALLBUT,Float

hi def link goCustomFunc    goFunction
