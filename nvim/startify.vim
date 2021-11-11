let g:startify_session_dir = '~/.config/nvim/sessions'

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   :Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]

let g:ascii2 = [
      \' ________   ___      ___  _____  ___   ',
      \'|"      "\ |"  \    /"  |(\"   \|"  \  ',
      \'(.  ___  :) \   \  //   ||.\\   \    | ',
      \'|: \   ) || /\\  \/.    ||: \.   \\  | ',
      \'(| (___\ |||: \.        ||.  \    \. | ',
      \'|:       :)|.  \    /:  ||    \    \ | ',
      \'(________/ |___|\__/|___| \___|\____\) ',
      \''
      \]

"let g:startify_custom_header = i
"      \ 'startify#pad(g:ascii2 + startify#fortune#boxed())'
highlight StartifyHeader ctermfg=14
let g:startify_custom_header = g:ascii2

