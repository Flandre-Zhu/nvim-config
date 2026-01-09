function! Comp_Fuck_Run()
	" call NewBufRunCmd(printf("nohup fuck-tex %s\n",g:src_path))	
	exec "w"
	call jobstart(['fuck-tex', g:src_path])
	exec "w"
endfunc

inoremap ' '
inoremap { {
nnoremap <F8> :call Comp_Fuck_Run()<CR><CR>
