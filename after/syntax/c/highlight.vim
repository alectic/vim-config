syn match   cOperator      display '[@!?&%$|<>^~;:,.=*+-]'

syn keyword cConstant       sizeof
syn keyword cStatement      do
syn keyword cStatement2     asm pid_t
syn keyword cUserLabel      do goto

syn match   cCustomFunc    "\w\+\s*(\@="

hi def link cCustomFunc Function
