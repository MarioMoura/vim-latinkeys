if exists('g:vim_latinkeys_plugin_loaded')
	finish
endif
let g:vim_latinkeys_plugin_loaded = 1

function! VlkOnInternal()
	echomsg "Special keys on"
	let b:vlkeys=1
	inoremap ~a ã
	inoremap 'e é
	inoremap 'a á
	inoremap `a à
	inoremap ^a â
	inoremap ^e ê
	inoremap 'i í
	inoremap ^i î
	inoremap ^o ô
	inoremap 'o ó
	inoremap ~o õ
	inoremap ^u û
	inoremap 'u ú
	inoremap cc ç

	inoremap ~A Ã
	inoremap 'A Á
	inoremap `A À
	inoremap ^A Â
	inoremap 'E É
	inoremap ^E Ê
	inoremap 'I Í
	inoremap ^I Î
	inoremap ^O Ô
	inoremap 'O Ó
	inoremap ~O Õ
	inoremap ^U Û
	inoremap 'U Ú
endfunction

function! VlkOffInternal()
	echomsg "Special keys off"
	let b:vlkeys=0
	iunmap ~a
	iunmap 'e
	iunmap `a
	iunmap 'a
	iunmap ^a
	iunmap ^e
	iunmap ^i
	iunmap 'i
	iunmap ^o
	iunmap 'o
	iunmap ~o
	iunmap ^u
	iunmap 'u
	iunmap cc

	iunmap ~A
	iunmap 'A
	iunmap `A
	iunmap ^A
	iunmap 'E
	iunmap ^E
	iunmap 'I
	iunmap ^I
	iunmap ^O
	iunmap 'O
	iunmap ~O
	iunmap ^U
	iunmap 'U
endfunction

let b:vlkeys=0
function! VlkToggleKeysInternal()
	if b:vlkeys
		call VlkOffInternal()
	else
		call VlkOnInternal()
	endif
endfunction

command VlkToggleKeys call VlkToggleKeysInternal()
command VlkOn call VlkOnInternal()
command VlkOff call VlkOffInternal()

if !exists('g:vlk_disable_binds')
	nnoremap <leader>tk :VlkToggleKeys()<CR>
endif
