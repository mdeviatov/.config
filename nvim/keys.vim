
" --- Настройки для Snippets
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-]>"
" let g:UltiSnipsJumpBackwardTrigger="<c-[>"


" Run python
map <f2> :w\|!python %<cr>

" --- NerdTree
map <F3> :NERDTreeTabsToggle<CR>
cnoremap W tabdo NERDTreeClose <bar> wa <bar> mksession! ~/.vim/My_Session.vim
" map <F3> :NERDTreeToggle<CR>



autocmd VimLeave *  if !v:dying | execute 'tabdo NERDTreeClose' | endif

   " - Session default dir and keys -
" -----------------------------------------------------------------------------
 exec 'nnoremap <Leader>ss :mks! ~/.config/nvim/sessions/'
 exec 'nnoremap <Leader>sl :so ~/.config/nvim/sessions/'

 nnoremap <leader>v :e $MYVIMRC<cr>
 nnoremap <leader>vs :source $MYVIMRC<cr>
 " Move one line
 " Move lines
 nnoremap <C-K> ddkP
 nnoremap <C-J> ddp
 " Move selected lines
 " See http://www.vim.org/scripts/script.php?script_id=1590
 vnoremap <C-K> xkP'[V']
 vnoremap <C-J> xp'[V']
 " Navigate with <Ctrl>-hjkl in Insert mode
 inoremap <C-h> <C-o>h
 inoremap <C-j> <C-o>j
 inoremap <C-k> <C-o>k
 inoremap <C-l> <C-o>l

     " - Delete buffer without close window and other-
 " -----------------------------------------------------------------------------
 nnoremap <silent><leader>bd :<C-U>bprevious <bar> bdelete #<CR>
 map bn :bn<cr>
 map bp :bp<cr>
 map bd :bdelete<cr>

 " JSON Format
" nnoremap <leader>j :%!python -m json.tool<CR>
nnoremap <leader>j :%!jq<CR>

"   - Folding START -
set nofoldenable
set foldlevel=99
set fillchars=fold:\
set foldtext=CustomFoldText()
setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)
function! GetPotionFold(lnum)
  if getline(a:lnum) =~? '\v^\s*$'
    return '-1'
  endif
  let this_indent = IndentLevel(a:lnum)
  let next_indent = IndentLevel(NextNonBlankLine(a:lnum))
  if next_indent == this_indent
    return this_indent
  elseif next_indent < this_indent
    return this_indent
  elseif next_indent > this_indent
    return '>' . next_indent
  endif
endfunction
function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction
function! NextNonBlankLine(lnum)
  let numlines = line('$')
  let current = a:lnum + 1
  while current <= numlines
      if getline(current) =~? '\v\S'
          return current
      endif
      let current += 1
  endwhile
  return -2
endfunction
function! CustomFoldText()
  " get first non-blank line
  let fs = v:foldstart
  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile
  if fs > v:foldend
      let line = getline(v:foldstart)
  else
      let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif
  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr))
  return line . expansionString . foldSizeStr . foldLevelStr
endfunction
"   - Folding END -
