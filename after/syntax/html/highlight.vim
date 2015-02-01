"hi clear javaScript
"hi link javaScript xxx

"syn match   HTMLjsOps           display '[@!?&%$|;:,.=*+-]'
"syn match   HTMLjsFuncDec       /^function\>/
"syn match   HTMLjsCustomParen    "?=("
"syn match   HTMLjsCustomFunc    "\w\+\s*(\@=" contains=HTMLjsCustomParen,HTMLjsFuncDec

"hi def link HTMLjsCustomFunc    jsCustomFunc
hi link javaScriptBraces    jsOps2
hi link javaScriptParens    jsOps2
