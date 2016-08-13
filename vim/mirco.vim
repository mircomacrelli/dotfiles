set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "Mirco"

" change color of the cursor line                                                                                   
hi CursorLine cterm=NONE ctermbg=253 ctermfg=NONE

" change the cursor line color when in insert mode
au InsertEnter * hi CursorLine ctermbg=151 ctermfg=NONE
au InsertLeave * hi CursorLine ctermbg=253 ctermfg=NONE

" change the cursor line and the status line color when the file is readonly
function CheckIfFileIsReadOnly()
    if &readonly
        hi CursorLine ctermbg=red
        hi StatusLine ctermfg=red
    endif
endfunction
au BufReadPost * call CheckIfFileIsReadOnly()

" other colors
hi Comment ctermfg=102 ctermbg=none cterm=none
