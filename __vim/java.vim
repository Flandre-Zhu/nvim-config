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
function ToggleCmt()
	:let s=getline('.')
	if(s[0]=='/' && s[1]=='/')
		exec 's/^\/\///g'
	else
		exec 's/^/\/\//g'
	endif
endfunc
