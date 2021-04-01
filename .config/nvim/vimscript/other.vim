" dashboard header
let g:asc_head = [
\'       ██          ██             ', 
\'      ░██         ░░              ',
\'      ░██ ██    ██ ██ ██████████  ', 
\'   ██████░██   ░██░██░░██░░██░░██ ',
\'  ██░░░██░░██ ░██ ░██ ░██ ░██ ░██ ',
\' ░██  ░██ ░░████  ░██ ░██ ░██ ░██ ',
\' ░░██████  ░░██   ░██ ███ ░██ ░██ ',
\'  ░                               ',
\'  ░[ coding comfort with no gui ] ',
\]

" setup for indentline
let g:indentLine_fileTypeExclude = ['markdown', 'startify', 'man', 'dashboard']
let g:indentLine_char = '┊'

" Nvim tree
let g:nvim_tree_indent_markers = 0
let g:nvim_tree_hide_dotfiles = 1

" termdebug setup
let g:termdebug_popup = 0
let g:termdebug_wide = 1

" setup for airline
let g:airline_section_b = '%{strftime("%a %d. %H:%M")}'
let g:airline_powerline_fonts = 1
let g:airline_theme  = 'violet'
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#tabline#enabled = 1

