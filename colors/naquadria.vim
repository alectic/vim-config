" Author:       Alexandru Dreptu <alecticwp@gmail.com>
" URL:          https://github.com/alectic/vim-config/blob/master/colors/naquadria.vim
" NOTE:         Depends on https://github.com/alectic/vim-config/tree/master/after/syntax/

set bg=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "naquadria"

" Code
let s:normal_color = {"attr": "none", "fg": "#ffffff", "bg": "#1A1A10"}
let s:comment_color = {"attr": "italic", "fg": "#858585"}
let s:commentdoc_color = {"attr": s:comment_color.attr, "fg": "#857e6b"}
let s:string_color = {"attr": "none", "fg": "#bf7c7c"}
let s:number_color = {"attr": "none", "fg": "#ffba5a"}
let s:char_color = {"attr": "none", "fg": "#ba73e6"}
let s:const_color = {"attr": "none", "fg": "#7390e6"}
let s:type_color = {"attr": "none", "fg": "#9090d9"}
let s:statement_color = {"attr": "none", "fg": "#bfac78"}
let s:cond_color = {"attr": "none", "fg": "#98b9d9"}
let s:ident_color = {"attr": "none", "fg": "white"}
let s:func_color = {"attr": "none", "fg": "#bbbbe6"}
"let s:func_color = {"attr": "none", "fg": "#B6CC99"}
let s:include_color = {"attr": "none", "fg": "#98b3a1"}
let s:keyword_color = {"attr": "none", "fg": "#B399FF"}
let s:loop_color = copy(s:cond_color)
let s:format_color = {"attr": "none", "fg": "#b17dcc"}
"let s:module_color = {"attr": "none", "fg": "#999999"} " TODO: to be removed
let s:module_color = {"attr": "none", "fg": "#B6CC99"}
"let s:attr_color = {"attr": "none", "fg": "#99907a"}
let s:class_color = {"attr": "none", "fg": "#71cc79"}
let s:private_color = {"attr": "none", "fg": "#62b38d"}
let s:special_color = {"attr": "none", "fg": "#80bbff"}
let s:cssclass_color = {"attr": "none", "fg": "#9FCC66"}
let s:operator_color = {"attr": "none", "fg": "#D9D96D"}
"let s:object_color = {"attr": "none", "fg": "#B6CC99"} " experimental
let s:paren_color = {"attr": "none", "fg": "#C0F0FF"}

" Editor
let s:tabline_color = {"attr": "none", "fg": "lightgray", "bg": "#2b2b21"}
let s:specialkey_color = {"attr": "none", "bg": s:tabline_color.bg}
let s:nontext_color = {"attr": "none", "fg": "lightgreen"}
let s:linenr_color = {"attr": "none", "fg": s:comment_color.fg, "bg": s:normal_color.bg}
let s:cursorline_color = {"attr": "none", "fg": "white", "bg": "#4d4d3a"}
let s:cursorcolumn_color = {"attr": "none", "fg": "white", "bg": s:tabline_color.bg}
let s:cursorlinenr_color = {"attr": "none", "fg": "#BFBF8F", "bg": s:normal_color.bg}
let s:signcolumn_color = {"bg": s:normal_color.bg}
let s:pmenu_color = {"attr": "none", "fg": "lightgray", "bg": "#212113"}
let s:pmenusel_color = {"attr": "none", "fg": "white", "bg": s:cursorline_color.bg}
let s:pmenuselbar_color = {"attr": "none", "bg": "#26261e"}
let s:pmenuthumb_color = {"attr": "none", "bg": s:pmenusel_color.bg}
let s:tablinefill_color = {"attr": "none", "bg": s:tabline_color.bg}
let s:tablinesel_color = {"attr": "none", "fg": "white", "bg": s:pmenusel_color.bg}
let s:todo_color = {"attr": "none", "fg": "white", "bg": "#721d1d"}
let s:cursor_color = {"attr": "none", "fg": "white", "bg": "#999954"}
let s:icursor_color = {"attr": "none", "bg": s:cursor_color.bg}
let s:search_color = {"attr": "none", "fg": "white", "bg": s:todo_color.bg}
let s:visual_color = {"attr": "none", "fg": "white", "bg": s:cursorline_color.bg}
let s:errormsg_color = {"attr": "none", "fg": "white", "bg": s:todo_color.bg}
let s:vertsplit_color = {"attr": "none", "fg": s:comment_color.fg, "bg": s:normal_color.bg}
let s:column_color = {"attr": "none", "bg": s:tabline_color.bg}
let s:dir_color = {"attr": "none", "fg": "lightblue"}
let s:matchparen_color = {"attr": "none", "fg": "white", "bg": s:cursorline_color.bg}
let s:statusline_color = {"attr": "none", "fg": "#cccccc", "bg": s:tabline_color.bg}
let s:statuslinenc_color = {"attr": "none", "fg": s:comment_color.fg, "bg": s:pmenu_color.bg}
let s:statuslinechange_color = {"attr": "none", "fg": "lightgreen", "bg": s:statusline_color.bg}
let s:statuslinenormal_color = {"attr": "none", "fg": "lightblue", "bg": s:statusline_color.bg}
let s:statuslineinsert_color = {"attr": "none", "fg": "lightgreen", "bg": s:statusline_color.bg}
let s:statuslineinfo_color = {"attr": "none", "fg": s:keyword_color.fg, "bg": s:statusline_color.bg}
let s:statuslinereadonly_color = {"attr": "none", "fg": "lightred", "bg": s:statusline_color.bg}
"let s:statuslinedelimiter_color = {"attr": "none", "fg": s:cursor_color.fg, "bg": s:statusline_color.bg}
let s:folded_color = {"attr": "none", "fg": s:statusline_color.fg, "bg": s:statusline_color.bg}
let s:foldcolumn_color = {"attr": "none", "fg": s:folded_color.fg, "bg": s:folded_color.bg}
let s:error_color = {"attr": "none", "fg": "white", "bg": s:todo_color.bg}
let s:diffremoved_color = {"attr": "none", "fg": "darkred"}

" Vim
exe "hi SpecialKey" "gui=".s:specialkey_color.attr "guibg=".s:specialkey_color.bg
exe "hi NonText" "gui=".s:nontext_color.attr "guifg=".s:nontext_color.fg
exe "hi LineNr" "gui=".s:linenr_color.attr "guifg=".s:linenr_color.fg "guibg=".s:linenr_color.bg
exe "hi CursorLine" "gui=".s:cursorline_color.attr "guifg=".s:cursorline_color.fg "guibg=".s:cursorline_color.bg
exe "hi CursorColumn" "gui=".s:cursorcolumn_color.attr "guifg=".s:cursorcolumn_color.fg "guibg=".s:cursorcolumn_color.bg
exe "hi CursorLineNr" "gui=".s:cursorlinenr_color.attr "guifg=".s:cursorlinenr_color.fg "guibg=".s:cursorlinenr_color.bg
exe "hi SignColumn" "guibg=".s:signcolumn_color["bg"]
exe "hi Pmenu" "gui=".s:pmenu_color.attr "guifg=".s:pmenu_color.fg "guibg=".s:pmenu_color.bg
exe "hi PmenuSel" "gui=".s:pmenusel_color.attr "guifg=".s:pmenusel_color.fg "guibg=".s:pmenusel_color.bg
exe "hi PmenuSbar" "gui=".s:pmenuselbar_color.attr "guibg=".s:pmenuselbar_color.bg
exe "hi PmenuThumb" "gui=".s:pmenuthumb_color.attr "guibg=".s:pmenuthumb_color.bg
exe "hi TabLine" "gui=".s:tabline_color.attr "guifg=".s:tabline_color.fg "guibg=".s:tabline_color.bg
exe "hi TabLineFill" "gui=".s:tablinefill_color.attr "guibg=".s:tablinefill_color.bg
exe "hi TabLineSel" "gui=".s:tablinesel_color.attr "guifg=".s:tablinesel_color.fg "guibg=".s:tablinesel_color.bg
exe "hi Todo" "gui=".s:todo_color.attr "guifg=".s:todo_color.fg "guibg=".s:todo_color.bg
exe "hi Search" "gui=".s:search_color.attr "guifg=".s:search_color.fg "guibg=".s:search_color.bg
exe "hi Visual" "gui=".s:visual_color.attr "guifg=".s:visual_color.fg "guibg=".s:visual_color.bg
exe "hi ErrorMsg" "gui=".s:errormsg_color.attr "guifg=".s:errormsg_color.fg "guibg=".s:errormsg_color.bg
exe "hi VertSplit" "gui=".s:vertsplit_color.attr "guifg=".s:vertsplit_color.fg "guibg=".s:vertsplit_color.bg
exe "hi ColorColumn" "gui=".s:column_color.attr "guibg=".s:column_color.bg
exe "hi Cursor" "gui=".s:cursor_color.attr "guifg=".s:cursor_color.fg "guibg=".s:cursor_color.bg
exe "hi iCursor" "gui=".s:icursor_color.attr "guibg=".s:icursor_color.bg
exe "hi Directory" "gui=".s:dir_color.attr "guifg=".s:dir_color.fg
exe "hi! MatchParen" "gui=".s:matchparen_color.attr "guifg=".s:matchparen_color.fg "guibg=".s:matchparen_color.bg
exe "hi StatusLine" "gui=".s:statusline_color.attr "guifg=".s:statusline_color.fg "guibg=".s:statusline_color.bg
exe "hi StatusLineNC" "gui=".s:statuslinenc_color.attr "guifg=".s:statuslinenc_color.fg "guibg=".s:statuslinenc_color.bg
exe "hi StatusLineChange" "gui=".s:statuslinechange_color.attr "guifg=".s:statuslinechange_color.fg "guibg=".s:statuslinechange_color.bg
exe "hi StatusLineNormal" "gui=".s:statuslinenormal_color.attr "guifg=".s:statuslinenormal_color.fg "guibg=".s:statuslinenormal_color.bg
exe "hi StatusLineInsert" "gui=".s:statuslineinsert_color.attr "guifg=".s:statuslineinsert_color.fg "guibg=".s:statuslineinsert_color.bg
exe "hi StatusLineInfo" "gui=".s:statuslineinfo_color.attr "guifg=".s:statuslineinfo_color.fg "guibg=".s:statuslineinfo_color.bg
exe "hi StatusLineReadOnly" "gui=".s:statuslinereadonly_color.attr "guifg=".s:statuslinereadonly_color.fg "guibg=".s:statuslinereadonly_color.bg
exe "hi Folded" "gui=".s:folded_color.attr "guifg=".s:folded_color.fg "guibg=".s:folded_color.bg
exe "hi FoldColumn" "gui=".s:foldcolumn_color.attr "guifg=".s:foldcolumn_color.fg "guibg=".s:foldcolumn_color.bg

hi link vimHighlight	    Statement
hi link vimCommand		    Statement
hi link vimLet              Statement
hi link vimNotFunc		    Conditional
hi link vimOption           Conditional
hi link vimSynMtchOpt	    Keyword
hi link vimSynContains	    Keyword
hi link vimGroupAdd         Keyword
hi link vimGroupSpecial	    Module
hi link vimPatSep		    none
hi link vimPatSepR		    none
hi link vimMapModKey        none
hi link vimNotation         none
hi link vimOper			    none
hi link vimHiGui            none
hi link vimHiGuiFgBg        none
hi link vimHiCtermFgBg      none
hi link vimSep              none
hi link vimParenSep         none

" General
exe "hi Normal" "gui=".s:normal_color.attr "guifg=".s:normal_color.fg "guibg=".s:normal_color.bg
exe "hi Comment" "gui=".s:comment_color.attr "guifg=".s:comment_color.fg
exe "hi CommentDoc" "gui=".s:commentdoc_color.attr "guifg=".s:commentdoc_color.fg
exe "hi String" "gui=".s:string_color.attr "guifg=".s:string_color.fg
exe "hi Format" "gui=".s:format_color.attr "guifg=".s:format_color.fg
exe "hi Number" "gui=".s:number_color.attr "guifg=".s:number_color.fg
exe "hi Character" "gui=".s:char_color.attr "guifg=".s:char_color.fg
exe "hi Constant" "gui=".s:const_color.attr "guifg=".s:const_color.fg
exe "hi Type" "gui=".s:type_color.attr "guifg=".s:type_color.fg
exe "hi Statement" "gui=".s:statement_color.attr "guifg=".s:statement_color.fg
exe "hi Conditional" "gui=".s:cond_color.attr "guifg=".s:cond_color.fg
exe "hi Repeat" "gui=".s:loop_color.attr "guifg=".s:loop_color.fg
exe "hi Identifier" "gui=".s:ident_color.attr "guifg=".s:ident_color.fg
exe "hi Function" "gui=".s:func_color.attr "guifg=".s:func_color.fg
exe "hi PreProc" "gui=".s:include_color.attr "guifg=".s:include_color.fg
exe "hi Keyword" "gui=".s:keyword_color.attr "guifg=".s:keyword_color.fg
exe "hi Error" "gui=".s:error_color.attr "guifg=".s:error_color.fg "guibg=".s:error_color.bg
exe "hi DiffRemoved" "gui=".s:diffremoved_color.attr "guifg=".s:diffremoved_color.fg
exe "hi Module" "gui=".s:module_color.attr "guifg=".s:module_color.fg
"exe "hi Attribute" "gui=".s:attr_color.attr "guifg=".s:attr_color.fg " TODO: to be removed
exe "hi Class" "gui=".s:class_color.attr "guifg=".s:class_color.fg
exe "hi Private" "gui=".s:private_color.attr "guifg=".s:private_color.fg
exe "hi Special" "gui=".s:special_color.attr "guifg=".s:special_color.fg
"exe "hi Object" "gui=".s:object_color.attr "guifg=".s:object_color.fg
exe "hi Operator" "gui=".s:operator_color.attr "guifg=".s:operator_color.fg
"exe "hi Paren" "gui=".s:paren_color.attr "guifg=".s:paren_color.fg
exe "hi Title" "gui=".s:keyword_color.attr "guifg=".s:keyword_color.fg

hi NonText          guifg=bg
hi link Float	    Number
hi link Macro       PreProc
hi link Label       Conditional
hi link Operator    Keyword
hi link Delimiter   Paren

" C
hi link cInclude		PreProc
hi link cIncluded		Module
hi link cPreCondit      cInclude
hi link cFormat         Format
hi link cStorageClass	Class
hi link cSpecial		Special
hi link cStructure      Class
hi link cOperator       Constant
hi link cUserLabel      Statement
" customs - defined in $HOME/.vim/after/syntax/c/highlight.vim
hi link cOperator       Operator
hi link cStatement      Statement
hi link cStatement2     Type

"hi link cParenError     none

" C++
hi link cppStructure    Class
" customs - defined in $HOME/.vim/after/syntax/cpp/highlight.vim
hi link cppKeyword1     Private
hi link cppKeyword2     Conditional
"hi link cppKeyword3     Class

" Java
hi link javaFormat          Format
hi link javaExternal        Conditional
hi link javaSpecialChar     Special
hi link javaClassDecl       Class
hi link javaScopeDecl       javaClassDecl
hi link javaStorageClass    javaClassDecl
hi link javaUserLabel       Statement
hi link javaDocComment      CommentDoc
hi link javaCommentTitle    javaDocComment
hi link javaDocTags         javaDocComment
hi link javaDocParam        javaDocComment
" customs - defined in $HOME/.vim/after/syntax/java.vim
hi link javaFunc            Function
hi link javaVisibility      Private
hi link javaActionDecl      javaVisibility
hi link javaThis            javaVisibility

" Groovy
hi link groovyJDKBuiltin     Keyword

" Clojure
hi link clojureParen        Paren
hi link clojureSpecial      Conditional

" Bash
hi link shFunction      Function
hi link shDerefSimple   Format
hi link shCommandSub    Keyword
hi link shLoop          Conditional
hi link shQuote         String
hi link shSnglCase      Operator
hi link shCaseBar       shSnglCase
hi link shTestOpr       Operator
hi link shRange         none
hi link shCmdSubRegion  none
hi link shArithRegion   none
hi link shVariable      none
hi link shCaseEsac      none
" customs - defined in $HOME/.vim/after/syntax/bash.vim

" Go
hi link goDirective		goConditional
hi link goDeclaration	Class
hi link goDeclType      Class
hi link goConditional   Conditional
hi link goConstants     Constant
hi link goEscapeC       Special
hi link goEscapeOctal   Special
hi link goSpaceError	SpecialKey
hi link goEscapeError	Visual
hi link goEscapeX		Special
" customs - defined in $HOME/.vim/after/syntax/go/highlight.vim
hi link goKeyword       Keyword
hi link goInterface     Type
hi link goFunction      Function
hi link goFuncDec       Keyword
hi link goFormat        Format

" Python
hi link pythonInclude       Conditional
hi link pythonBuiltIn       Keyword
hi link pythonSpaceError    SpecialKey
hi link pythonEscape        Special
hi link pythonException     Statement
hi link pythonExceptions    Private

" customs - defined in $HOME/.vim/after/syntax/python/highlight.vim
hi link pythonDocStringS    CommentDoc
hi link pythonDocStringD    CommentDoc
hi link pythonFormat        Format
hi link pythonBrackets      pythonFormat
hi link pythonSelf          Private
hi link pythonDatatype      Type
hi link pythonClass         Class
hi link pythonDef           Keyword
hi link pythonConstant      Constant
hi link pythonVar           Statement

" Ruby
hi link rubyStringDelimiter         String
hi link rubyClass                   Class
hi link rubyInterpolationDelimiter  Format
hi link rubyDefine                  Keyword
hi link rubyInclude                 Conditional
hi link rubySharpBang               Comment

" JavaScript
hi javaScript                   guifg=white

hi link jsFuncCall              Function
hi link jsFunction              Keyword
hi link jsArrowFunction         Operator
hi link jsStorageClass          Keyword
hi link jsGlobalObjects         Module
hi link jsClass                 Class
hi link jsOperator              Operator
hi link jsNoise                 Operator
hi link jsTernaryIfOperator     Operator
hi link jsGenerator             Operator
hi link jsTemplateVar           Format
hi link jsSuper                 Keyword
hi link jsThis                  Keyword
hi link jsStatic                Class
hi link jsPrototype             Keyword
hi link jsHtmlEvents            Keyword
hi link jsNan                   Constant
hi link jsBuiltins              Module
hi link jsModules               Conditional
hi link jsModuleWords           jsModules
hi link jsFuncParens            none
hi link jsFuncBraces            none
hi link jsParensError           none " ???
hi link jsFuncArgRest           none
" customs - defined in $HOME/.vim/after/syntax/javascript/highlight.vim
"hi link jsCustomFunc			Function
hi link jsFormat                Format
hi link jsKeyword               Keyword
hi link jsShebang               Comment

" TypeScript
hi link typescriptFuncKeyword           Keyword
hi link typescriptIdentifier            jsStorageClass
hi link typescriptEndColons             Operator
hi link typescriptOpSymbols             typescriptEndColons
hi link typescriptDecorators            cssClassName
hi link typescriptGlobalObjects         jsGlobalObjects
"hi link typescriptReserved              Class
hi link typescriptParens                none
hi link typescriptbraces                none
hi link typescriptHtmlElemProperties    none

" JSON
hi link jsonKeyword         Keyword
hi link jsonBraces          none

" HTML
hi link htmlTagName			Keyword
hi link htmlSpecialTagName  Keyword
hi link htmlArg				Statement
hi link htmlH1              String
hi link htmlSpecialChar     Statement
hi link htmlCommentError    SpecialKey
hi link htmlTitle			none
hi link htmlHead            none
hi link htmlScriptTag       none
hi link htmlTag             none
hi link htmlBold            none
" customs - defined in $HOME/.vim/after/syntax/html/highlight.vim
"hi link HTMLjsOps           jsOps
"hi link HTMLjsCustomFunc    jsCustomFunc

" XML
hi link xmlTagName      htmlTagName
hi link xmlEndTag       xmlTagName

" CSS
exe "hi cssClassName" "gui=".s:cssclass_color.attr "guifg=".s:cssclass_color.fg
hi link cssTagName              htmlTagName
hi link cssKeyFrameSelector     Repeat
hi link cssFontAttr             Number
hi link cssFunctionComma        cssAttrComma
hi link cssIdentifier           Statement
hi link cssIncludeKeyword       Module
hi link cssColor                Number
hi link cssUnitDecorators       cssColor
hi link cssValueLength          Number
hi link cssClassNameDot         Operator
hi link cssNoise                Operator
hi link cssTextProp             none
hi link cssFontProp             none
hi link cssBackgroundProp       none
hi link cssBraces               none
hi link cssAttrComma            none
hi link cssColorProp            none
hi link cssBoxProp              none
hi link cssDimensionProp        none
hi link cssTableProp            none
hi link cssPositioningProp      none
hi link cssUIProp               none

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

" Racket
hi link racketSyntax    Define
" customs - defined in $HOME/.vim/after/syntax/racket.vim
hi link racketFormat    Format
hi link racketEscape    Special

" will be moved to a more appropriate place
" Syntastic
"hi SyntasticWarningLine guifg=white guibg=#330d0d
hi SyntasticWarningSign guifg=yellow    ctermfg=yellow
hi SyntasticErrorSign	guifg=red   ctermfg=red
hi SyntasticWarning gui=undercurl guisp=#ff6666
hi SyntasticError guisp=red
"hi link SyntasticErrorLine SyntasticWarningLine

" NERDTree
" this will be moved to a more appropriate location
hi NERDTreeExecFile	        guifg=lightgreen
hi NERDTreeRO		        guifg=lightred
hi link NERDTreeOpenable    TagbarFoldIcon
hi link NERDTreeClosable    NERDTreeOpenable

" TagBar
exe "hi TagbarFoldIcon" "gui=".s:cursor_color.attr "guifg=".s:cursor_color.bg
hi link TagbarScope                 Class
hi link TagbarSignature             Function
hi link TagbarNestedKind            Keyword
hi link TagbarPseudoID              Operator
hi link TagbarFoldIcon              Cursor
hi link TagbarHighlight             Search
hi link TagbarVisibilityPrivate     TagbarFoldIcon
hi link TagbarVisibilityProtected   TagbarVisibilityPrivate
hi link TagbarVisibilityPublic      TagbarVisibilityPrivate

" GitGitter
hi GitGutterAdd     guifg=lightgreen
hi GitGutterDelete  guifg=lightred
hi GitGutterChange  guifg=yellow
