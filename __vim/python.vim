function Comp_Fuck_Run()
	call Create_term_buf('v',80)
	execute printf('term pyinstaller --onefile %s && %s/dist/%s',g:src_path,g:parent_dir,g:src_noex)
	startinsert
endfunc
function Comp_Fuck_RunZ()
	call Create_term_buf('v',80)
	execute printf('term pyinstaller --onefile %s && %s/dist/%s < z',g:src_path,g:parend_dir,g:src_noex)
	startinsert
endfunc

function ToggleCmt()
	:let s=getline('.')
	if(s[0]=='#')
		exec 's/^#//g'
	else
		exec 's/^/#/g'
	endif
endfunc

function RunPy()
	call Create_term_buf('v',80)
	execute printf('term python3 %s',g:src_path)
	startinsert
endfunc
function RunPyZ()
	call Create_term_buf('v',80)
	execute printf('term python3 %s < z',g:src_path)
	startinsert
endfunc

nnoremap <F6> :call Comp_Fuck_Run()<CR>
nnoremap <F7> :call Comp_Fuck_RunZ()<CR>
nnoremap <F8> :call RunPy()<CR>
nnoremap <F9> :call RunPyZ()<CR>