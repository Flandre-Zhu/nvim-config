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
" not used

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
function RunPyInter()
	call Create_term_buf('v',80)
	execute printf('term python3 -i %s',g:src_path)
	startinsert
endfunc

nnoremap <F8> :call RunPy()<CR>
nnoremap <F9> :call RunPyZ()<CR>
nnoremap <F2> :call RunPyInter()<CR>
