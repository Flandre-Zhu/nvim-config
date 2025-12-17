inoremap INIT #include<stdio.h><CR>#include<stdbool.h><CR>#define F(i,l,r) for(int i=l;i<=r;++i)<CR>#define D(i,r,l) for(int i=r;i>=l;--i)<CR><CR>int main(){<CR><CR>return 0;<CR>}

let g:option="-std=c11"
function! Comp_Fuck_Run()
	call NewBufRunCmd(printf("gcc %s %s -o %s && ./%s",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction
function! Comp_Fuck_RunZ()
	call NewBufRunCmd(printf("gcc %s %s -o %s && ./%s < z",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction
