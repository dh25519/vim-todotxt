if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'todotxt'
endif

let s:cpo_save = &cpo
set cpo&vim

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

highlight default link todotxtCreated   Constant
highlight default link todotxtDone      Comment
highlight default link todotxtPriorityA DiffDelete
highlight default link todotxtPriorityB DiffChange
highlight default link todotxtPriorityC DiffAdd
highlight default link todotxtPriority  DiffText
highlight default link todotxtHidden    Comment
highlight default link todotxtDue       Special
highlight default link todotxtThresh    Identifier
highlight default link todotxtRec       Identifier
highlight default link todotxtProject   Label
highlight default link todotxtContext   Type

let &cpo = s:cpo_save
unlet s:cpo_save

let b:current_syntax = "todotxt"
if main_syntax == 'todotxt'
  unlet main_syntax
endif
