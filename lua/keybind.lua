local opts={
	noremap=true,
	silent=true,
}
local keyset = vim.keymap.set

-- basic key map
keyset('i', '(', '()<esc>i', opts)
keyset('i', '[', '[]<esc>i', opts)
keyset('i', '\'', '\'\'<esc>i', opts)
keyset('i', '\"', '\"\"<esc>i', opts)
keyset('i', '{}', '{}<esc>i', opts)
keyset('i', '{', '{<cr>}<esc>kA', opts)
keyset('i', '<tab>', 'v:lua.smart_tab()', { noremap = true, expr = true })

-- 自定义的各种功能
keyset('n','<F1>',':call Create_buf_and_go_term()<CR>',opts)
keyset('n','<F8>',':call Comp_Fuck_Run()<CR>',opts)
keyset('n','<F9>',':call Comp_Fuck_RunZ()<CR>',opts)
keyset('n','<C-A>','ggVG',opts)
keyset('n', '<C-B>', ':b ', opts)
keyset('t', '<Esc>', [[<C-\><C-n>]], opts) -- esc in vim terminal
keyset('n','<F3>',':NvimTreeToggle<CR>',opts)

-- keybindings for coc.nvim
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
-- go to prev/next error
keyset("n", "g[", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "g]", "<Plug>(coc-diagnostic-next)", {silent = true})
-- symbol rename
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
-- coc completion
local cocopt = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<c-cr>", [[coc#pum#visible() ? coc#pum#confirm() : "<cr>"]], cocopt)

-- smart tab: tab to escape (), or normal tab
local function in_list(list, value)
  for _, v in ipairs(list) do
    if v == value then
      return true
    end
  end
  return false
end
function _G.smart_tab()
    local col = vim.fn.col('.') -- 当前光标列
    if col <= 1 then
        return '\t' -- 行首直接插入 tab
    end

    local prev_char = vim.fn.getline('.'):sub(col, col)

		-- "右括号" 列表
		local escape_list = { ")", "]", "}", '"', "'", "$" }

    if in_list(escape_list, prev_char) then
        return '<Right>' -- 跳出括号
    else
        return '\t' -- 插入 tab
    end
end
function _G.smart_brace()
	local col =  vim.fn.col('.')
  local line = vim.fn.getline('.')

	-- note: '\x1b' = <esc>
  if col > #line then
    return "{\n}\x1bO"
  else
    return "{}\x1bi"
  end
end
