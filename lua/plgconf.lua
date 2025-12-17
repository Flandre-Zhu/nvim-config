-- bufferline.lua
require('bufferline').setup {
	options = {
        -- 左侧让出 nvim-tree 的位置
		separator_style = "thin",
		tab_size = 10,
		max_name_length =   7,        -- 设置最大文件名长度
    	max_prefix_length = 7,      -- 设置路径的最大长度
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

----------------------------------------------------------------------------------------

-- markdownpre.lua
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0 -- 0: auto refresh
vim.g.mkdp_command_for_global = 1 -- can be used for not .md files
vim.g.mkdp_open_to_the_world = 0
vim.g.mkdp_open_ip = ''
vim.g.mkdp_browser = 'qutebrowser'
vim.g.mkdp_echo_preview_url = 0
vim.g.mkdp_browserfunc = ''
-- options for Markdown rendering
-- mkit: markdown-it options for rendering
-- katex: KaTeX options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: whether to disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: means the cursor position is always at the middle of the preview page
--   top: means the Vim top viewport always shows up at the top of the preview page
--   relative: means the cursor position is always at relative positon of the preview page
-- hide_yaml_meta: whether to hide YAML metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = 'middle',
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = false,
  disable_filename = 0,
  toc = {}
}
vim.g.mkdp_markdown_css = ''
vim.g.mkdp_highlight_css = ''
vim.g.mkdp_port = ''
vim.g.mkdp_page_title = '「${name}」'
vim.g.mkdp_images_path = '/home/z/.markdown_img_vim'
vim.g.mkdp_filetypes = { 'markdown' }
vim.g.mkdp_theme = 'light'
vim.g.mkdp_combine_preview = 0
vim.g.mkdp_combine_preview_auto_refresh = 1

----------------------------------------------------------------------------------------

-- Comment.lua
require('Comment').setup({
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = '<C-_>',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})

----------------------------------------------------------------------------------------

-- nvim-tree.lua
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


----------------------------------------------------------------------------------------

-- ultisnips.lua
vim.g.UltiSnipsSnippetDirectories = {"UltiSnips","/home/z/.config/nvim/snip/"}
vim.g.UltiSnipsExpandTrigger=        '<s-tab>'
vim.g.UltiSnipsJumpForwardTrigger =  '<c-j>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'

----------------------------------------------------------------------------------------

-- vim-tex.lua
-- 启用文件类型插件和缩进支持
-- 大多数插件管理器会自动处理这个，但手动写也可以
vim.cmd('filetype plugin indent on')
-- 启用语法高亮（VimTeX 依赖）
vim.cmd('syntax enable')
-- 查看器选项：这里设置为 zathura
local Method = 'zathura'
vim.g.vimtex_view_method = Method
vim.g.vimtex_view_general_viewer = Method
-- 禁用 VimTeX 默认快捷键映射
vim.g.vimtex_mappings_enabled = false
-- 也可以用通用接口设置查看器，下面是参考（不启用）
-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
-- 默认使用 latexmk 编译
vim.g.vimtex_compiler_method = 'latexmk'
-- localleader 可以修改，默认是 "\"
-- vim.g.maplocalleader = ','
-- 自定义配置部分
vim.g.tex_flavor = 'latex'
vim.g.vimtex_quickfix_mode = 0
vim.o.conceallevel = 1
vim.g.tex_conceal = 'abdmg'
-- 编译器使用 nvr
-- 这个默认就是 'nvr'，如果出错可以显式设置
vim.g.vimtex_compiler_progname = 'nvr'
-- 自定义 latexmk 的输出目录
vim.g.vimtex_latexmk_build_dir = './tex-build'

----------------------------------------------------------------------------------------

-- plugin coc.nvim
-- CocInstall coc-clangd coc-pyright coc-lua coc-markdownlint
