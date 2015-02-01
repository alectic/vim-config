syn keyword     pythonSelf          self
syn keyword     pythonDatatype      bool int float str bytes tuple list dict set frozenset file object
syn keyword     pythonConstant      True False None
syn keyword     pythonClass         class
syn keyword     pythonDef           def
syn keyword     pythonVar           global nonlocal

syn region      pythonDocStringS    start=/\([r,u]\)\='''/ end=/'''/
syn region      pythonDocStringD    start=/\([r,u]\)\="""/ end=/"""/
syn region      pythonBrackets      start=/{/ end=/}/ containedin=pythonString contained
syn match       pythonFormat        display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([sd]\|\[\^\=.[^]]*\]\)" containedin=pythonString,pythonRawString
syn match       pythonOps           display '[@!?&%$|<>^~;:,.=*+-]'
syn match       pythonOps2          display '[][(){}]'
syn match       pythonCustomParen   "?=("
syn match       pythonCustomFunc    "\w\+\s*(\@=" contains=pythonCustomParen

hi def link     pythonCustomFunc    Function
