syn keyword     cppKeyword1     private public
syn keyword     cppKeyword2     using
syn keyword     cUserLabel      do goto
"syn keyword     cppKeyowrd3     class

syn match   cppOps          display '[@!?&%$|<>^~;:,.=*+-]'
syn match   cppOps2         display '[][(){}]'
syn match   cppCustomParen  "(" contains=cParen,cCppParen
syn match   cppCustomFunc   "\w\+\s*(" contains=cCustomParen

hi def link cppCustomFunc   Function
