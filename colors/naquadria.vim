" Languages:    Rust, C, C++, Arduino, Go, Python, JavaScript, HTML, CSS 
" Author:       Alex Alectic <alecticwp@gmail.com>
" Maintainer:   Alex Alectic <alecticwp@gmail.com>
" URL:          https://github.com/alectic/vim-config/blob/master/colors/naquadria.vim
" NOTE:         It needs https://github.com/alectic/vim-config/tree/master/after/syntax/

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "naquadria"

" ********** Clear Colors ********** "
hi clear MatchParen
" ********** End Clear Colors ********** "

" ********** Color Definitions ********** "

" ===== Vim Colors ===== "
hi SpecialKey	gui=none	guibg=#121212		ctermbg=brown
hi NonText      gui=none	guifg=lightgreen
hi LineNr       gui=none	guifg=#4d4d4d		guibg=#090909   ctermfg=darkgrey
hi CursorLine   gui=none	guifg=white         guibg=#41324D 
hi CursorColumn	gui=none	guifg=white         guibg=#330d0d
hi CursorLineNr	gui=bold	guifg=yellow		guibg=#0f0f0f
hi SignColumn	guibg=#090909
hi Pmenu        gui=italic	guifg=lightgrey     guibg=#151515   ctermfg=white   ctermbg=black
hi PmenuSel     gui=none	guifg=white			guibg=#41324D   ctermfg=white   ctermbg=darkmagenta
hi PmenuSbar    gui=none	guibg=#333333       ctermbg=grey
hi PmenuThumb   gui=none	guibg=#151515
hi TabLineFill  gui=none	guibg=#151515
hi TabLine      gui=italic	guifg=lightgrey		guibg=#151515	ctermfg=lightgrey
hi TabLineSel   gui=none	guifg=white			guibg=#4C3A59
hi Todo         gui=none	guifg=white         guibg=#721d1d   ctermfg=white   ctermbg=red
hi Search       gui=none	guifg=white         guibg=#721d1d   ctermfg=white   ctermbg=red
hi Visual       gui=none	guifg=white         guibg=#721d1d   ctermfg=white   ctermbg=red
hi ErrorMsg		gui=none	guifg=white			guibg=#721d1d
hi StatusLine   gui=none	guifg=white         guibg=#721d1d   ctermfg=white   ctermbg=red
hi VertSplit	gui=none	guifg=#BBBBe6		guibg=#050505   ctermfg=grey    ctermbg=black   cterm=none
hi ColorColumn	gui=none	guibg=#0f0f0f       ctermbg=darkgrey
hi Cursor       gui=none	guifg=black         guibg=lightgreen    ctermfg=black   ctermbg=lightgreen
hi iCursor      gui=none	guibg=yellow
hi Directory	gui=none	guifg=lightblue		ctermfg=blue
hi MatchParen	gui=underline,bold	            guifg=white     guibg=#330d0d       ctermfg=white   ctermbg=darkred
" ===== End Vim Colors ===== "

" ===== General Colors ===== "
hi Normal		gui=none	guifg=#ffffff	guibg=#090909       ctermfg=white
hi Comment      gui=italic	guifg=#737373   ctermfg=darkgrey
hi String       gui=italic	guifg=#bf6060   ctermfg=red
hi Number       gui=none	guifg=#F2A055   ctermfg=yellow
hi Character    gui=none	guifg=#BA73E6   ctermfg=darkcyan
"hi Boolean      gui=none	guifg=#1f5c99   ctermfg=blue
hi Constant     gui=none	guifg=#7390E6
hi Operator		gui=none	guifg=#BFBF60   ctermfg=yellow
hi Type         gui=none	guifg=#9090D9   ctermfg=blue
hi Statement    gui=none	guifg=#BF904C   ctermfg=brown
hi Conditional  gui=none	guifg=#98B9D9   ctermfg=blue
hi Identifier   gui=none	guifg=white     ctermfg=white
hi Function     gui=none	guifg=#BBBBE6   ctermfg=white
hi PreProc      gui=none	guifg=#98b3a1   ctermfg=lightgreen
hi Keyword      gui=none	guifg=#9999ff   ctermfg=lightblue
hi Error        gui=none	guifg=white		guibg=#721d1d		ctermfg=white	ctermbg=red
hi diffRemoved  gui=none    guifg=darkred   ctermfg=darkred
" customs
hi varDef       gui=none    guifg=#BFAC7B   ctermfg=brown
" ===== End General Colors ===== "

" ===== Rust Colors ===== "
hi rustFormat           gui=italic	guifg=#B17DCC	ctermfg=magenta
hi rustCommentLineDoc   gui=italic	guifg=#666052   ctermfg=darkyellow
hi rustModPath          gui=none	guifg=#999999   ctermfg=grey
hi rustAttribute        gui=none    guifg=#99907a
" customs - defined in $HOME/.vim/after/syntax/rust/highlight.vim
hi rustOps              gui=none	guifg=#D9D96D   ctermfg=cyan
hi rustOps2             gui=none	guifg=#C0F0FF   ctermfg=grey
hi rustKeyword3         gui=none	guifg=#63B36A   ctermfg=darkgreen
hi rustKeyword6         gui=none    guifg=#62B38D
hi rustSpecial          gui=none	guifg=#80BBFF   ctermfg=lightblue
" ===== End Rust Colors ===== "

" ===== Python Colors ===== "
"hi pythonExceptions gui=none    guifg=#6ca1d9 " alternative color
" ===== End Python Colors ===== "


" ********** Linking ********** "

" ===== Vim Linking ===== "
hi link vimHighlight	rustKeyword4
hi link vimCommand		rustKeyword4
hi link vimLet          rustKeyword2
hi link vimHiGui        none
hi link vimHiGuiFgBg    none
hi link vimHiCtermFgBg  none
hi link vimNotFunc		Conditional
hi link vimOption       Conditional
hi link vimMapModKey    rustOps
hi link vimNotation     rustOps
hi link vimOper			rustOps
hi link vimSynMtchOpt	Keyword
hi link vimSynContains	Keyword
hi link vimGroupAdd    Keyword
hi link vimPatSep		rustOps
hi link vimPatSepR		rustOps
hi link vimGroupSpecial	rustModPath

" ===== End Vim Linking ===== "

" ===== General Linking ===== "
hi link Float		Number
"hi link Boolean		Constant
hi link Macro       PreProc
hi link Repeat      Conditional
hi link Statement	rustKeyword2
hi link Label       Conditional
" ===== End General Linking ===== "

" ===== Rust Linking ===== "
hi link rustStorage		            rustKeyword3
hi link rustLifetime	            rustKeyword4
hi link rustFuncCall	            Function
hi link rustDeriving                rustAttribute
hi link rustBoxPlacementParens      rustOps2
hi link rustSelf                    rustKeyword
" ???? don't know what's with this link
hi link rustInvalidBareKeyword      xxx
" customs - defined in $HOME/.vim/after/syntax/rust/highlight.vim
hi link rustBrackets                rustFormat
hi link rustKeyword2	            Statement
hi link rustKeyword5                Conditional
hi link rustKeyword4                varDef
" ===== End Rust Linking ===== "

" ===== C Linking ===== "
hi link cInclude		PreProc
hi link cIncluded		RustModPath
hi link cPreCondit      cInclude
hi link cFormat         rustFormat
hi link cStorageClass	rustKeyword6
hi link cSpecial		rustSpecial
hi link cStructure      rustKeyword3
hi link cOperator       Constant
hi link cUserLabel      rustKeyword4
" customs - defined in $HOME/.vim/after/syntax/c/highlight.vim
hi link cStatement      rustKeyword2
hi link cStatement2     Type
hi link cOps            rustOps
hi link cOps2           rustOps2
" ===== End C Linking ===== "

" ===== C++ Linking ===== "
hi link cppOps          rustOps
hi link cppOps2         rustOps2
hi link cppStructure    rustKeyword3
" customs - defined in $HOME/.vim/after/syntax/cpp/highlight.vim
hi link cppKeyword1     rustKeyword6
hi link cppKeyword2     rustKeyword5
"hi link cppKeyword3     rustKeyword3
" ===== End C++ Linking ===== "

" ===== Arduino Linking ===== "
hi link arduinoOps      rustOps
hi link arduinoOps2     rustOps2
" ===== End Arduino Linking ===== "

" ===== Go Linking ===== "
hi link goDirective		goConditional
hi link goDeclaration	rustKeyword3
hi link goDeclType      rustKeyword3
hi link goConditional   Conditional
hi link goConstants     Constant
hi link goEscapeC       rustSpecial
hi link goEscapeOctal   rustSpecial
hi link goSpaceError	SpecialKey
hi link goEscapeError	Visual
hi link goEscapeX		rustSpecial
" customs - defined in $HOME/.vim/after/syntax/go/highlight.vim
hi link goKeyword       rustKeyword4
hi link goKeyword2      rustKeyword6
hi link goFunction      Function
"hi link goPackage       rustModPath
hi link goFuncDec       Keyword
hi link goFormat        rustFormat
hi link goOps           rustOps
hi link goOps2          rustOps2
" ===== End Go Linking ===== "

" ===== Python Linking ===== "
hi link pythonInclude       Conditional
hi link pythonBuiltIn       Keyword
hi link pythonSpaceError    SpecialKey
hi link pythonEscape        rustSpecial
hi link pythonException     varDef
hi link pythonExceptions    rustKeyword6
" customs - defined in $HOME/.vim/after/syntax/python/highlight.vim
hi link pythonDocStringS    rustCommentLineDoc
hi link pythonDocStringD    rustCommentLineDoc
hi link pythonFormat        rustFormat
hi link pythonBrackets      pythonFormat
hi link pythonSelf          rustKeyword6
hi link pythonDatatype      Type
hi link pythonClass         rustKeyword3
hi link pythonDef           Keyword
hi link pythonOps           rustOps
hi link pythonOps2          rustOps2
hi link pythonConstant      Constant
hi link pythonVar           varDef
" ===== End Python Linking ===== "

" ===== JavaScript Linking ===== "
hi link javaScriptSpecial		rustSpecial
hi link javaScriptNumber		Number
hi link javaScriptIdentifier	rustKeyword4
hi link javaScriptGlobal		rustKeyword6
hi link javaScriptFunction		Keyword
hi link javaScriptOperator		Keyword
hi link javaScriptBranch		Statement
hi link javaScriptNull			Constant
hi link javaScriptReserved      rustKeyword3
"hi link javaScriptBrackets      rustOps2
"hi link javaScriptParens        rustOps2
" customs - defined in $HOME/.vim/after/syntax/javascript/highlight.vim
hi link jsCustomFunc			Function
hi link jsFormat                rustFormat
hi link javaScriptStringS       String
hi link javaScriptStringD       String
hi link jsOps					rustOps
hi link jsOps2					rustOps2
hi link jsKeyword1				rustKeyword6
hi link jsShebang               Comment
" ===== End JavaScript Linking ===== "

" ====== Racket Linkin ===== "
hi link Delimiter           rustOps2
hi link racketSyntax        Keyword
" ===== End Racket Linkin ===== "

" ===== HTML Linking ===== "
hi link htmlTitle			htmlString
hi link htmlTagName			Type
hi link htmlArg				Statement
hi link javaScriptParens	javaScriptOps2
hi link htmlTag				rustOps2
hi link htmlEndTag			rustOps2
hi link htmlH1              String
" customs - defined in $HOME/.vim/after/syntax/html/highlight.vim
"hi link HTMLjsOps           jsOps
"hi link HTMLjsCustomFunc    jsCustomFunc
" ===== End HTML Linking ===== "

" ===== CSS Linking ===== "
hi link cssTagName              rustKeyword4
hi link cssClassName            rustKeyword3
hi link cssKeyFrameSelector     Repeat
hi link cssBraces               rustOps2
"hi link cssAttrRegion           rustOps2
hi link cssAttrComma            rustOps
hi link cssFunctionComma        cssAttrComma
hi link cssClassNameDot         rustOps
hi link cssNoise                rustOps
hi link cssIdentifier           Statement
hi link cssIncludeKeyword       rustModPath
hi link cssColor                Number
hi link cssUnitDecorators       cssColor
hi link cssValueLength          Number
" ===== End CSS Linking ===== "

" ===== YAML Linkin ===== "
hi link yamlBlockMappingKey     Keyword
hi link yamlKeyValueDelimiter   rustOps
" ===== End YAML Linking ===== "

" ===== Markdown Linking ===== "
hi link markdownH1	Function
hi link markdownH2  Function
hi link markdownH3  Function
hi link markdownH4  Function
hi link markdownH5  Function
hi link markdownH6	Function
" ===== End Markdown Linking ===== "

" this shit will be moved to a more appropriate place
" ===== Syntastic Plugin ===== "
"hi SyntasticWarningLine guifg=white guibg=#330d0d
hi SyntasticWarningSign guifg=yellow
hi SyntasticErrorSign	guifg=red
hi SyntasticWarning gui=undercurl guisp=red
hi SyntasticError guisp=red
"hi link SyntasticErrorLine SyntasticWarningLine
" ===== End Syntastic Plugin ===== "

" ===== Plugins Colors ===== "
" this will be moved to a more appropriate location
hi NERDTreeExecFile	    guifg=lightgreen
hi NERDTreeRO		    guifg=lightred
hi NERDTreeOpenable     guifg=green
hi NERDTreeClosable     guifg=brown

"hi TagbarScope  guifg=lightgreen
hi link TagbarScope         rustKeyword3
hi link TagbarSignature     Function
" ===== End Plugins Colors ===== "
