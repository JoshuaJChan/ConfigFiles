" Hex Colors, RGB, etc colors highlighted in vim
" automatic :let g:colorizer_auto_color = 1 OR manually :ColorHighlight

" gruvbox
colorscheme gruvbox

" lightline
set laststatus=2
set noshowmode 
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'readonly', 'filename', 'modified', 'Reminder' ] ]
	\ },
	\ 'component': {
	\   'Reminder': '80-20 Rule'
	\ },
	\ }



