syn keyword jsKeyword       self typeof new delete
syn keyword jsStatement     yield
syn keyword jsStatic        const
syn keyword Constant        Infinity

syn match   jsNoise         display "[$#@|]"
syn match   jsFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([sdj]\|\[\^\=.[^]]*\]\)" containedin=javaScriptD,javaScriptS
syn match   jsShebang       display "\%^#!.*"
"syn match   jsCustomFunc    "\w\+\s*(\@=" contains=jsCustomParen,jsFuncDec
syn match   Paren           "[()]"
