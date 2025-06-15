local opts={
	noremap=true,
	silent=true,
}
local keyset = vim.keymap.set

-- 自定义的各种功能
keyset('n','<F1>',':call Create_buf_and_go_term()<CR>',opts)
keyset('n','<F8>',':call Comp_Fuck_Run()<CR>',opts)
keyset('n','<F9>',':call Comp_Fuck_RunZ()<CR>',opts)
keyset('n','<C-A>','ggVG',opts)
keyset('n','<C-P>',':call ToggleCmt()<CR>',opts)
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
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "<cr>"]], cocopt)
keyset("i", "<c-j>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', cocopt)
keyset("i", "<c-k>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], cocopt)

keyset('i', '<tab>', 'v:lua.smart_tab()', { noremap = true, expr = true })
-- smart tab: tab to espace (), or normal tab
function _G.smart_tab()
    local col = vim.fn.col('.') -- 当前光标列
    if col <= 1 then
        return '\t' -- 行首直接插入 tab
    end
    local prev_char = vim.fn.getline('.'):sub(col, col)
    if prev_char == ')' or prev_char == ']' or prev_char == '}' or prev_char == '"' or prev_char == "'" then
        return '<Right>' -- 跳出括号
    else
        return '\t' -- 插入 tab
    end
end

