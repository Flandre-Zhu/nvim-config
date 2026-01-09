inoremap INIT #include<bits/stdc++.h><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}<CR>
inoremap DEFS #define vi vector<int><CR>#define eb emplace_back<CR>#define sz(x) ((int)x.size())<CR>#define al(x) x.begin(),x.end()<CR>#define pii pair<int,int><CR>#define fi first<CR>#define se second<CR>#define lwrb lower_bound<CR>#define uprb upper_bound<CR>

let g:option=""

function! Comp_Fuck_Run()
	call NewBufRunCmd(printf("g++ %s %s -o %s && ./%s",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction
function! Comp_Fuck_RunZ()
	call NewBufRunCmd(printf("g++ %s %s -o %s && ./%s < z",g:option,g:src_path,g:src_noex,g:src_noex))
endfunction

