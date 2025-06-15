function Comp_Fuck_Run()
	exec 'w'
	execute printf('term scalac %s && scala %s',g:src_path,g:src_noex)
	startinsert
endfunc
function Comp_Fuck_RunZ()
	exec 'w'
	execute printf('term scalac %s && scala %s < z',g:src_path,g:src_noex)
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
