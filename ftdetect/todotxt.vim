autocmd BufNewFile,BufRead \(todo\|done\).txt
    \ if &filetype==#'text' | set filetype=todotxt | else | setf todotxt | endif
