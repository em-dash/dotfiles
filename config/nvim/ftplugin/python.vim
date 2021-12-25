
let b:did_ftplugin=1

" absolutely evil
" setlocal nocindent

" TODO this handles indentation after a c /* */ style comment by lining it up
" with the auto asterisks. yike.
setlocal autoindent
setlocal smartindent

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal commentstring=#\ %s

