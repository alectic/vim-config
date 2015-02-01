syn keyword jsKeyword1      this prototype

syn match   jsFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([sdj]\|\[\^\=.[^]]*\]\)" containedin=javaScriptD,javaScriptS
syn match   jsShebang       display "\%^#!.*"
syn match   jsOps           display '[@!?&%$|<>^~;:,.=*+-]'
syn match   jsOps2          display '[][(){}]'
syn match   jsCustomParen   "?=("
syn match   jsCustomFunc    "\w\+\s*(\@=" contains=jsCustomParen,jsFuncDec
