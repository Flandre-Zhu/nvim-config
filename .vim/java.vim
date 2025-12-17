function Comp_Fuck_Run()
	exec 'w'
	call Create_term_buf('v',80)
	execute printf('term javac %s && java %s',g:src_path,g:src_noex)
	startinsert
endfunc
function Comp_Fuck_RunZ()
	exec 'w'
	call Create_term_buf('v',80)
	execute printf('term javac %s && java %s < z',g:src_path,g:src_noex)
	startinsert
endfunc

