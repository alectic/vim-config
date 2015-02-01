syn keyword cStatement      do
syn keyword cStatement2     asm pid_t
syn keyword cUserLabel      do goto

syn match   cOps            display '[@!?&%$|<>^~;:,.=*+-]'
syn match   cOps2           display '[][(){}]'
syn match   cCustomParen    "(" contains=cParen,cCppParen
syn match   cCustomFunc     "\w\+\s*(" contains=cCustomParen

hi def link cCustomFunc  Function
