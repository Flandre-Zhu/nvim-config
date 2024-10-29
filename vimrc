syntax on
colors natsuki_light

set nu rnu
set mouse=a
set laststatus=2
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set noexpandtab
set backspace=indent,eol,start
set foldmethod=manual

set timeoutlen=300
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap {<CR> {<CR>}<esc>O
inoremap ' ''<esc>i
inoremap " ""<esc>i

" create new buffer to run
function Create_term_buf(_type, size)
  set splitbelow
  set splitright
  if a:_type ==# 'v'
    vnew
  else
    new
  endif
  execute 'resize ' . a:size
endfunction

function Create_buf_and_go_term()
	call Create_term_buf('v', 80)
	exec "term"
	startinsert
endfunction
function NewBufRunCmd(cmd)
	exec 'w'
	call Create_term_buf('v', 80)
	execute printf("term %s",a:cmd)
	startinsert
endfunction

let g:src_path = expand('%')
let g:src_noex = expand('%<')
let g:parent_dir = fnamemodify(src_path,':p:h')

augroup cpp
	autocmd!
	autocmd FileType cpp    source ~/.config/nvim/__vim/cpp.vim
augroup END

augroup c
	autocmd!
	autocmd FileType c      source ~/.config/nvim/__vim/c.vim
augroup END

augroup python
	autocmd!
	autocmd FileType python source ~/.config/nvim/__vim/python.vim
augroup END

augroup java
	autocmd!
	autocmd FileType java   source ~/.config/nvim/__vim/java.vim
augroup END
augroup scala
	autocmd!
	autocmd FileType scala  source ~/.config/nvim/__vim/scala.vim
augroup END

augroup html
	autocmd!
	autocmd FileType html   source ~/.config/nvim/__vim/html.vim
augroup END
