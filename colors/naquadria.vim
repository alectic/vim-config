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
hi SpecialKey	    gui=none	    guibg=#2b2b21		                                        ctermbg=brown
hi NonText          gui=none	    guifg=lightgreen
hi LineNr           gui=none	    guifg=#858585 		guibg=#171712       ctermfg=darkgrey
hi CursorLine       gui=none	    guifg=white         guibg=#4d4d3a       ctermfg=blue
hi CursorColumn	    gui=none	    guifg=white         guibg=#2b2b21
hi CursorLineNr	    gui=none	    guifg=yellow		guibg=#171712
hi SignColumn	                                        guibg=#171712
hi Pmenu            gui=none	    guifg=lightgrey     guibg=#1F1F18       ctermfg=white       ctermbg=black
hi PmenuSel         gui=italic	    guifg=white			guibg=#4d4d3a       ctermfg=white       ctermbg=darkblue
hi PmenuSbar        gui=none	                        guibg=#26261E                           ctermbg=lightgrey
hi PmenuThumb       gui=none	                        guibg=#333333                           ctermbg=grey
hi TabLineFill      gui=none	                        guibg=#2B2B21       ctermfg=black
hi TabLine          gui=none	    guifg=lightgrey		guibg=#2B2B21	    ctermfg=grey        ctermbg=black
hi TabLineSel       gui=italic	    guifg=white			guibg=#4d4d3a                           ctermbg=darkblue
hi Todo             gui=none	    guifg=white         guibg=#721d1d       ctermfg=white       ctermbg=red
hi Search           gui=italic	    guifg=white         guibg=#721d1d       ctermfg=white       ctermbg=darkred
hi Visual           gui=none	    guifg=white         guibg=#4D4D3A       ctermfg=white       ctermbg=red
hi ErrorMsg		    gui=none	    guifg=white			guibg=#721d1d
hi VertSplit	    gui=none	    guifg=#BBBBE6		guibg=#161710       ctermfg=grey        ctermbg=black       cterm=none
hi ColorColumn	    gui=none	                        guibg=#2B2B21                           ctermbg=black
hi Cursor           gui=none	    guifg=black         guibg=lightgreen    ctermfg=black       ctermbg=lightgreen
hi iCursor          gui=none	    guibg=yellow
hi Directory	    gui=none	    guifg=lightblue		                    ctermfg=blue
hi MatchParen	    gui=underline	guifg=white         guibg=#4D4D3A       ctermfg=white       ctermbg=darkred
hi StatusLine       gui=none        guifg=#cccccc       guibg=#2B2B21       ctermfg=white       ctermbg=black
hi StatuslineNC     gui=none        guifg=#858585       guibg=#1f1f18       ctermfg=white       ctermbg=darkgray

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
hi String           gui=italic	guifg=#BF7C7C   ctermfg=red
hi Number           gui=none	guifg=#F2A055   ctermfg=lightyellow
hi Character        gui=none	guifg=#BA73E6   ctermfg=darkcyan
hi Constant         gui=none	guifg=#7390E6   ctermfg=blue
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
hi link Operator    Keyword

" Rust
hi rustFormat           gui=italic	guifg=#B17DCC	ctermfg=darkmagenta
hi rustCommentLineDoc   gui=italic	guifg=#857E6B   ctermfg=darkyellow
hi rustModPath          gui=none	guifg=#999999   ctermfg=grey
hi rustAttribute        gui=none    guifg=#99907a
" customs - defined in $HOME/.vim/after/syntax/rust/highlight.vim
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

" C++
hi link cppStructure    rustKeyword3

" customs - defined in $HOME/.vim/after/syntax/cpp/highlight.vim
hi link cppKeyword1     rustKeyword6
hi link cppKeyword2     rustKeyword5
"hi link cppKeyword3     rustKeyword3

" Java
hi link javaExternal    Conditional
hi link javaSpecialChar rustSpecial

" Bash
"hi link shRange         rustOps2
"hi link shCmdSubRegion  rustOps2
hi link shVariable      Statement
hi link shDerefSimple   rustFormat
hi link shCommandSub    Keyword
hi link shLoop          Conditional
hi link shTestOpr       rustOps

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
hi link pythonConstant      Constant
hi link pythonVar           Statement

" JavaScript
hi javaScript                   guifg=white

hi link javaScriptBraces        clear
hi link javaScriptSpecial		rustSpecial
hi link javaScriptNumber		Number
hi link javaScriptIdentifier	rustKeyword4
hi link javaScriptGlobal		rustKeyword6
hi link javaScriptFunction		Keyword
hi link javaScriptBranch		Statement
hi link javaScriptNull			Constant
hi link javaScriptReserved      rustKeyword3
hi link javaScriptGlobal        Type

" customs - defined in $HOME/.vim/after/syntax/javascript/highlight.vim
hi link jsCustomFunc			Function
hi link jsFormat                rustFormat
hi link javaScriptStringS       String
hi link javaScriptStringD       String
hi link jsKeyword1				rustKeyword6
hi link jsShebang               Comment

" HTML
hi link htmlTagName			Type
hi link htmlSpecialTagName  Type
hi link htmlArg				Statement
hi link htmlH1              String
hi link htmlSpecialChar     Statement
hi link htmlCommentError    SpecialKey
hi link htmlTitle			clear
hi link htmlHead            clear
hi link htmlScriptTag       clear
hi link htmlTag             clear

" customs - defined in $HOME/.vim/after/syntax/html/highlight.vim
"hi link HTMLjsOps           jsOps
"hi link HTMLjsCustomFunc    jsCustomFunc

" CSS
hi link cssTagName              htmlTagName
hi link cssClassName            rustKeyword3
hi link cssKeyFrameSelector     Repeat
hi link cssFontAttr             Number
hi link cssFunctionComma        cssAttrComma
hi link cssIdentifier           Statement
hi link cssIncludeKeyword       rustModPath
hi link cssColor                Number
hi link cssUnitDecorators       cssColor
hi link cssValueLength          Number
hi link cssTextProp             clear
hi link cssFontProp             clear
hi link cssBackgroundProp       clear
hi link cssBraces               clear
hi link cssClassNameDot         clear
hi link cssAttrComma            clear
hi link cssColorProp            clear
hi link cssBoxProp              clear

" LESS
hi link lessVariable            Statement

" YAML
hi link yamlBlockMappingKey     Keyword

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
