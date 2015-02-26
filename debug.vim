""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Maintainer: Ryan Carney
"Repository: https://github.com/arecarn/util.vim
"License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"SCRIPT SETTINGS {{{
let save_cpo = &cpo
set cpo&vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"DEBUG {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! util#debug#print_header(text) "{{{2

    if g:util_debug
        echom repeat(' ', 80)
        echom repeat('=', 80)
        echom a:text." Debug"
        echom repeat('-', 80)
    endif
endfunction "}}}2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! util#debug#print_msg(text) "{{{2

    if g:util_debug
        echom a:text
    endif
endfunction "}}}2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! util#debug#print_var_msg(variable, text) "{{{2

    if g:util_debug
        echom '['.a:variable.'] = '.a:text
    endif
endfunction "}}}2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

let &cpo = save_cpo
" vim:foldmethod=marker
