noremap <space>cf :call<space>zig#fmt#Format()<cr>
compiler zig

noremap <space>cc :make<space>build<cr>
noremap <space>ct :make<space>test<cr>
noremap <space>cr :make<space>run<cr>

setlocal textwidth=100
setlocal formatoptions-=ro
