if exists("*CSyntaxAfter")
	call CSyntaxAfter()
endif

syn keyword javaVisibility  public private protected
syn keyword javaActionDecl  implements extends throws synchronized native
syn keyword javaThis        this super
syn keyword javaOperator    new
syn keyword javaStatement   break continue
syn keyword javaTodo        contained NOTE BUG

syn match   javaOperator    display "[.,:;!$%^&*=+-]"
syn match   javaFormat      display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbBcCdhHtTuoxXzZfeEgGsScpnl]\|\[\^\=.[^]]*\]\)" containedin=javaString
syn match   javaFunc        "\w\+\s*(\@="
