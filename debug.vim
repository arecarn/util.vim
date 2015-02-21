""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Maintainer: Ryan Carney
"Repository: https://github.com/arecarn/util.vim
"License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"DEBUG {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! util#debug#PrintHeader(text) "{{{2
    if g:util_debug
        echom repeat(' ', 80)
        echom repeat('=', 80)
        echom a:text." Debug"
        echom repeat('-', 80)
    endif
endfunction "}}}2

function! util#debug#PrintMsg(text) "{{{2
    if g:util_debug
        echom a:text
    endif
endfunction "}}}2

function! util#debug#PrintVarMsg(variable, text) "{{{2
    if g:util_debug
        echom '['.a:variable.'] = '.a:text
    endif
endfunction "}}}2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

let &cpo = save_cpo
" vim:foldmethod=marker
