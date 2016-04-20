syn match   racketFormat    display "\~\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([asl]\|\[\^\=.[^]]*\]\)" containedin=racketString
syn match   racketEscape    display +\\[n\\'"]+ containedin=racketString
