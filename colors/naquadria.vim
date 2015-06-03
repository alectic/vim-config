" Author:       Alectic <alecticwp@gmail.com>
" URL:          https://github.com/alectic/vim-config/blob/master/colors/naquadria.vim
" NOTE:         Depends on https://github.com/alectic/vim-config/tree/master/after/syntax/

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "naquadria"

hi clear MatchParen

" Vim
hi SpecialKey	    gui=none	    guibg=#1F1F18		                                        ctermbg=brown
hi NonText          gui=none	    guifg=lightgreen
hi LineNr           gui=none	    guifg=#858585 		guibg=#171712       ctermfg=darkgrey
hi CursorLine       gui=none	    guifg=white         guibg=#333328       ctermfg=blue
hi CursorColumn	    gui=none	    guifg=white         guibg=#330d0d
hi CursorLineNr	    gui=bold	    guifg=yellow		guibg=#0f0f0f
hi SignColumn	                                        guibg=#0D0D0D
hi Pmenu            gui=none	    guifg=lightgrey     guibg=#1F1F18       ctermfg=white       ctermbg=black
hi PmenuSel         gui=italic	    guifg=white			guibg=#333328       ctermfg=white       ctermbg=darkblue
hi PmenuSbar        gui=none	                        guibg=#26261E                           ctermbg=lightgrey
hi PmenuThumb       gui=none	                        guibg=#333333                           ctermbg=grey
hi TabLineFill      gui=none	                        guibg=#1f1f18       ctermfg=black
hi TabLine          gui=none	    guifg=lightgrey		guibg=#1f1f18	    ctermfg=grey        ctermbg=black
hi TabLineSel       gui=italic	    guifg=white			guibg=#333328                           ctermbg=darkblue
hi Todo             gui=none	    guifg=white         guibg=#721d1d       ctermfg=white       ctermbg=red
hi Search           gui=italic	    guifg=white         guibg=#721d1d       ctermfg=white       ctermbg=darkred
hi Visual           gui=none	    guifg=white         guibg=#4D4D3A       ctermfg=white       ctermbg=red
hi ErrorMsg		    gui=none	    guifg=white			guibg=#721d1d
hi StatusLine       gui=none	    guifg=white         guibg=#171712       ctermfg=white       ctermbg=red
hi VertSplit	    gui=none	    guifg=#BBBBE6		guibg=#161710       ctermfg=grey        ctermbg=black       cterm=none
hi ColorColumn	    gui=none	                        guibg=#1F1F18                           ctermbg=black
hi Cursor           gui=none	    guifg=black         guibg=lightgreen    ctermfg=black       ctermbg=lightgreen
hi iCursor          gui=none	    guibg=yellow
hi Directory	    gui=none	    guifg=lightblue		                    ctermfg=blue
hi MatchParen	    gui=underline	guifg=white         guibg=#333328       ctermfg=white       ctermbg=darkred
hi StatusLine       gui=none        guifg=#cccccc       guibg=#1f1f18       ctermfg=white       ctermbg=black
hi StatuslineNC     gui=none        guifg=#858585       guibg=#141410       ctermfg=white       ctermbg=darkgray

hi link vimHighlight	    rustKeyword4
hi link vimCommand		    rustKeyword4
hi link vimLet              rustKeyword2
hi link vimHiGui            none
hi link vimHiGuiFgBg        none
hi link vimHiCtermFgBg      none
hi link vimNotFunc		    Conditional
hi link vimOption           Conditional
hi link vimMapModKey        rustOps
hi link vimNotation         rustOps
hi link vimOper			    rustOps
hi link vimSynMtchOpt	    Keyword
hi link vimSynContains	    Keyword
hi link vimGroupAdd         Keyword
hi link vimPatSep		    rustOps
hi link vimPatSepR		    rustOps
hi link vimGroupSpecial	    rustModPath

" General
hi Normal		    gui=none	guifg=#ffffff	guibg=#171712       ctermfg=white
hi Comment          gui=italic	guifg=#858585   ctermfg=darkgrey
hi String           gui=italic	guifg=#bf6060   ctermfg=red
hi Number           gui=none	guifg=#F2A055   ctermfg=lightyellow
hi Character        gui=none	guifg=#BA73E6   ctermfg=darkcyan
hi Constant         gui=none	guifg=#7390E6   ctermfg=blue
hi Operator		    gui=none	guifg=#BFBF60   ctermfg=yellow
hi Type             gui=none	guifg=#9090D9   ctermfg=blue
hi Statement        gui=none	guifg=#BFAC7B    ctermfg=brown
hi Conditional      gui=none	guifg=#98B9D9   ctermfg=blue
hi Identifier       gui=none	guifg=white     ctermfg=white
hi Function         gui=none	guifg=#BBBBE6   ctermfg=white
hi PreProc          gui=none	guifg=#98b3a1   ctermfg=darkgreen
hi Keyword          gui=none	guifg=#9999ff
hi Error            gui=none	guifg=white		guibg=#721d1d		ctermfg=white	ctermbg=red
hi diffRemoved      gui=none    guifg=darkred   ctermfg=darkred

hi link Float	    Number
hi link Macro       PreProc
hi link Repeat      Conditional
hi link Statement	rustKeyword2
hi link Label       Conditional

" Rust
hi rustFormat           gui=italic	guifg=#B17DCC	ctermfg=darkmagenta
hi rustCommentLineDoc   gui=italic	guifg=#857E6B   ctermfg=darkyellow
hi rustModPath          gui=none	guifg=#999999   ctermfg=grey
hi rustAttribute        gui=none    guifg=#99907a
" customs - defined in $HOME/.vim/after/syntax/rust/highlight.vim
hi rustOps              gui=none	guifg=#D9D96D   ctermfg=yellow  ctermfg=lightcyan
hi rustOps2             gui=none	guifg=#C0F0FF   ctermfg=grey    ctermfg=lightcyan
hi rustKeyword3         gui=none	guifg=#63B36A   ctermfg=darkgreen
hi rustKeyword6         gui=none    guifg=#62B38D   ctermfg=darkgreen
hi rustSpecial          gui=none	guifg=#80BBFF   ctermfg=lightblue

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
hi link rustKeyword4                Statement

" C
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

" C++
hi link cppOps          rustOps
hi link cppOps2         rustOps2
hi link cppStructure    rustKeyword3

" customs - defined in $HOME/.vim/after/syntax/cpp/highlight.vim
hi link cppKeyword1     rustKeyword6
hi link cppKeyword2     rustKeyword5
"hi link cppKeyword3     rustKeyword3

" Java
hi link javaExternal    Conditional
hi link javaSpecialChar rustSpecial
hi link javaOps         rustOps
hi link javaParen       rustOps2
hi link javaParen1      rustOps2
hi link javaParenT      rustOps

" Bash
hi link shRange         rustOps2
hi link shCmdSubRegion  rustOps2
hi link shVariable      Statement
hi link shDerefSimple   rustFormat
hi link shCommandSub    Keyword
hi link shLoop          Conditional
hi link shTestOpr       rustOps

" Arduino
hi link arduinoOps      rustOps
hi link arduinoOps2     rustOps2

" Go
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
hi link goInterface     Type
hi link goFunction      Function
"hi link goPackage       rustModPath
hi link goFuncDec       Keyword
hi link goFormat        rustFormat
hi link goOps           rustOps
hi link goOps2          rustOps2

" Python
hi link pythonInclude       Conditional
hi link pythonBuiltIn       Keyword
hi link pythonSpaceError    SpecialKey
hi link pythonEscape        rustSpecial
hi link pythonException     Statement
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
hi link pythonVar           Statement

" JavaScript
hi javaScript                   guifg=white

hi link javaScriptSpecial		rustSpecial
hi link javaScriptNumber		Number
hi link javaScriptIdentifier	rustKeyword4
hi link javaScriptGlobal		rustKeyword6
hi link javaScriptFunction		Keyword
hi link javaScriptOperator		rustOps
hi link javaScriptBranch		Statement
hi link javaScriptNull			Constant
hi link javaScriptReserved      rustKeyword3
hi link javaScriptParens	    jsOps2

" customs - defined in $HOME/.vim/after/syntax/javascript/highlight.vim
hi link jsCustomFunc			Function
hi link jsFormat                rustFormat
hi link javaScriptStringS       String
hi link javaScriptStringD       String
hi link jsOps					rustOps
hi link jsOps2					rustOps2
hi link jsKeyword1				rustKeyword6
hi link jsShebang               Comment

" JSON
hi link jsonQuote           rustOps
hi link jsonBraces          rustOps2

" HTML
hi link htmlTitle			clear
hi link htmlHead            clear
hi link htmlTagName			Type
hi link htmlSpecialTagName  Type
hi link htmlArg				Statement
hi link htmlTag				Statement
hi link htmlEndTag			rustOps2
hi link htmlH1              String
hi link htmlScriptTag       rustOps2

" customs - defined in $HOME/.vim/after/syntax/html/highlight.vim
"hi link HTMLjsOps           jsOps
"hi link HTMLjsCustomFunc    jsCustomFunc

" CSS
hi link cssTagName              htmlTagName
hi link cssClassName            rustKeyword3
hi link cssKeyFrameSelector     Repeat
hi link cssBraces               rustOps2
hi link cssFontAttr             Constant
hi link cssAttrComma            rustOps
hi link cssFunctionComma        cssAttrComma
hi link cssClassNameDot         rustOps
hi link cssNoise                rustOps
hi link cssIdentifier           Statement
hi link cssIncludeKeyword       rustModPath
hi link cssColor                Constant
hi link cssUnitDecorators       cssColor
hi link cssValueLength          Number
hi link cssTextProp             clear
hi link cssFontProp             clear
hi link cssBackgroundProp       clear

" LESS
hi link lessVariable            Statement

" YAML
hi link yamlBlockMappingKey     Keyword
hi link yamlKeyValueDelimiter   rustOps

" Markdown
hi link markdownH1	Function
hi link markdownH2  Function
hi link markdownH3  Function
hi link markdownH4  Function
hi link markdownH5  Function
hi link markdownH6	Function

" will be moved to a more appropriate place
" Syntastic
"hi SyntasticWarningLine guifg=white guibg=#330d0d
hi SyntasticWarningSign guifg=yellow    ctermfg=yellow
hi SyntasticErrorSign	guifg=red   ctermfg=red
hi SyntasticWarning gui=undercurl guisp=red
hi SyntasticError guisp=red
"hi link SyntasticErrorLine SyntasticWarningLine

" NERDTree
" this will be moved to a more appropriate location
hi NERDTreeExecFile	    guifg=lightgreen
hi NERDTreeRO		    guifg=lightred
hi NERDTreeOpenable     guifg=green
hi NERDTreeClosable     guifg=brown

" TagBar
"hi TagbarScope  guifg=lightgreen
hi link TagbarScope         rustKeyword3
hi link TagbarSignature     Function
