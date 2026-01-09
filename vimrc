syntax on
" colors catppuccin-mocha

" plugin
" source ~/.config/nvim/lua/plugin-config/markdownpre.vim'
" source ~/.config/nvim/lua/plugin-config/vim-tex.vim
" source ~/.config/nvim/lua/plugin-config/ultisnips.vim

set encoding=UTF-8

set nu rnu
set mouse=a
set laststatus=2
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set noexpandtab
set backspace=indent,eol,start
set foldmethod=manual

" (), [], {}, '', "" logic
" see lua/keybind.lua

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
function Create_page_and_term()
	exec "tabnew"
	exec "term zsh"
	startinsert
endfunction

let g:src_path = expand('%')
let g:src_noex = expand('%<')
let g:parent_dir = fnamemodify(src_path,':p:h')

augroup cpp
	autocmd!
	autocmd FileType cpp    source ~/.config/nvim/.vim/cpp.vim
augroup END

augroup c
	autocmd!
	autocmd FileType c      source ~/.config/nvim/.vim/c.vim
augroup END

augroup python
	autocmd!
	autocmd FileType python source ~/.config/nvim/.vim/python.vim
augroup END

augroup java
	autocmd!
	autocmd FileType java   source ~/.config/nvim/.vim/java.vim
augroup END
augroup scala
	autocmd!
	autocmd FileType scala  source ~/.config/nvim/.vim/scala.vim
augroup END

augroup markdown
	autocmd!
	autocmd FileType markdown source ~/.config/nvim/.vim/md.vim
augroup END
augroup tex
	autocmd!
	autocmd FileType tex      source ~/.config/nvim/.vim/tex.vim
augroup END

augroup html
	autocmd!
	autocmd FileType html   source ~/.config/nvim/.vim/html.vim
augroup END

augroup scheme
	autocmd!
	autocmd FileType scheme   source ~/.config/nvim/.vim/scm.vim
augroup END

augroup sql
	autocmd!
	autocmd FileType sql 	  source ~/.config/nvim/.vim/sql.vim
augroup END
