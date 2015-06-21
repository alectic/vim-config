syn keyword jsKeyword       self this

syn match   jsFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([sdj]\|\[\^\=.[^]]*\]\)" containedin=javaScriptD,javaScriptS
syn match   jsShebang       display "\%^#!.*"
syn match   jsCustomFunc    "\w\+\s*(\@=" contains=jsCustomParen,jsFuncDec
