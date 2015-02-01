syn match   arduinoOps          display '[@!?&%$|<>^~;:,.=*+-]'
syn match   arduinoOps2         display '[][(){}]'
syn match   arduinoCustomParen  "(" contains=cParen,cCppParen
syn match   arduinoCustomFunc   "\w\+\s*(" contains=cCustomParen

hi def link arduinoCustomFunc   Function
