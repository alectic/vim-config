if exists("*CSyntaxAfter")
	call CSyntaxAfter()
endif

syn keyword javaVisibility  public private protected
syn keyword javaActionDecl  implements extends throws synchronized native
syn keyword javaThis        this super
syn keyword javaOperator    new
syn keyword javaStatement   break

syn match   javaFormat  display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([bBhHsScCdoxXeEfgGaAtTn]\|\[\^\=.[^]]*\]\)" containedin=javaString
syn match   _Paren      display "[\(\)]"
syn match   javaFunc    "\w\+\s*(\@="


" CSyntaxAfter plugin
hi link _Paren      Paren
hi link _Bracket    Paren
hi clear _Block
hi link _Block      Paren
