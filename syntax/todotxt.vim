if exists("b:current_syntax")
    finish
endif

syntax match todotxtDone "\v^x .*$"
syntax match todotxtPriority "\v^\([D-Z]\)\V\ze\s"
syntax match todotxtPriorityA "\v^\(A\)\V\ze\s"
syntax match todotxtPriorityB "\v^\(B\)\V\ze\s"
syntax match todotxtPriorityC "\v^\(C\)\V\ze\s"
syntax match todotxtCreated "\v^(\([A-Z]\) )?\d{4}-\d{2}-\d{2}\V\ze " contains=todotxtPriority.\?
syntax match todotxtHidden "\v^.*<h:[1-9]\d*>.*$"
syntax match todotxtDue "\v<due:\d{4}-\d{2}-\d{2}>"
syntax match todotxtThresh "\v<t:\d{4}-\d{2}-\d{2}>"
syntax match todotxtRec "\v<rec:\+?\d+[dwmyb]>"
syntax match todotxtProject "\s\zs\v\+(\S+)>"
syntax match todotxtContext "\s\zs\v\@(\S+)>"

highlight todotxtCreated        ctermfg=darkblue
highlight todotxtDone           ctermfg=darkgray
highlight todotxtPriorityA      ctermfg=darkred
highlight todotxtPriorityB      ctermfg=darkgreen
highlight todotxtPriorityC      ctermfg=darkcyan
highlight todotxtPriority       ctermfg=None
if &background==#'dark'
    highlight todotxtHidden         ctermfg=black
else
    highlight todotxtHidden         ctermfg=lightgray
endif
highlight todotxtDue            ctermfg=darkred
highlight todotxtThresh         ctermfg=darkgreen
highlight todotxtRec            ctermfg=darkblue
highlight todotxtProject        ctermfg=darkyellow
highlight todotxtContext        ctermfg=darkcyan

let b:current_syntax = "todotxt"
