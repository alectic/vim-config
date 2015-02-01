syn keyword     rustOperator        in
syn keyword     rustKeyword2        break return continue
syn keyword     rustKeyword3        type struct extern enum skipwhite
syn keyword     rustKeyword4        let pub
syn keyword     rustKeyword5        loop while for if else use unsafe
syn keyword     rustKeyword6        mod impl trait

syn region      rustBrackets        start=/{/ end=/}/ containedin=rustString contained

syn match   rustOps         display '[@!?&%$|<>^~;:,.=*+-]'
syn match   rustOps2        display '[][(){}]'
syn match   rustSpecial     display "\\\(x\x\+\|\o\{1,3}\|.\|$\)" containedin=rustString
