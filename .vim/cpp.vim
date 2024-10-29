inoremap INIT #include<bits/stdc++.h><CR>using namespace std;<CR>#define F(i,l,r) for(int i=(l);i<=(r);++i)<CR>#define D(i,r,l) for(int i=(r);i>=(l);--i)<CR>#define MEM(x,a) memset(x,a,sizeof(x))<CR>int I(){int x=0,f=0;char c=getchar(); while(!isdigit(c))f=(c=='-'),c=getchar(); while(isdigit(c))x=x*10+c-'0',c=getchar(); return f?-x:x;}<CR><CR>void flandre()<CR>{<CR><CR>}<CR>#undef int<CR>int main()<CR>{<CR>flandre();<CR>return 0;<CR>}<CR>
inoremap DEFS #define vi vector<int><CR>#define eb emplace_back<CR>#define sz(x) ((int)x.size())<CR>#define al(x) x.begin(),x.end()<CR>#define pii pair<int,int><CR>#define fi first<CR>#define se second<CR>#define lwrb lower_bound<CR>#define uprb upper_bound<CR>

let g:option=""

function! Comp_Fuck_Run()
	call NewBufRunCmd(printf("g++ %s %s -o %s && ./%s",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction
function! Comp_Fuck_RunZ()
	call NewBufRunCmd(printf("g++ %s %s -o %s && ./%s < z",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction

function ToggleCmt()
	:let s=getline('.')
	if(s[0]=='/' && s[1]=='/')
		exec 's/^\/\///g'
	else
		exec 's/^/\/\//g'
	endif
endfunc
