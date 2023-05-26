
let b:did_ftplugin=1

noremap <space>cf :call<space>zig#fmt#Format()<cr>

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal textwidth=100

setlocal commentstring=//\ %s
