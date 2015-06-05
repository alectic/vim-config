syn keyword     cppKeyword1     private public
syn keyword     cppKeyword2     using
syn keyword     cUserLabel      do goto
"syn keyword     cppKeyowrd3     class

syn match   cppCustomFunc   "\w\+\s*(" contains=cCustomParen

hi def link cppCustomFunc   Function
