syn keyword cStatement      do
syn keyword cStatement2     asm pid_t
syn keyword cUserLabel      do goto

syn match   cCustomFunc     "\w\+\s*(" contains=cCustomParen

hi def link cCustomFunc  Function
