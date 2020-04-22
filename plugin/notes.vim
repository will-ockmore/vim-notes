" Copyright (c) 2015 William Ockmore
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:save_cpo = &cpo
set cpo&vim

let g:notes_dir = get(g:, 'notes_dir', $HOME . "/notes")
let g:vim_notes_date_format = get(g:, 'vim_notes_date_format', "%d-%m-%Y")

function! s:NotesEntry()
  if !isdirectory(g:notes_dir)
      call mkdir(g:notes_dir, "p")
  endif

  execute "edit " . g:notes_dir . "/" . strftime(g:vim_notes_date_format) . ".md"
endfunction

command! Notes call s:NotesEntry()

let &cpo = s:save_cpo
unlet s:save_cpo
