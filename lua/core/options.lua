-- 全局变量
-- 这里设置 netrw 的列表样式为 3
vim.g.netrw_liststyle = 3

-- 使用系统剪贴板
vim.opt.clipboard:append("unnamedplus")

-- 设置编码为 utf-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- jkhl 移动时周围保留 10 行
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10

-- >> << 控制缩进，设置缩进宽度为 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 显示相对行号和绝对行号
vim.wo.relativenumber = true
vim.wo.number = true

-- 设置 tab 和缩进相关的选项
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- 用空格替代 tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- 高亮当前行
vim.wo.cursorline = true

-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索时忽略大小写，但包含大写字符时不忽略
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索时不高亮
vim.o.hlsearch = false

-- 输入时搜索
vim.opt.incsearch = false

-- 设置命令行高度为 1
vim.o.cmdheight = 1

-- 当文件被外部程序修改时，自动加载文件
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.wo.wrap = false

-- 光标在行首尾可以移动到上下两行
vim.o.whichwrap = '<,>,[,]'

-- 启用鼠标支持
vim.o.mouse = "a"

-- 禁用 swap 文件
vim.o.swapfile = false

-- 设置等待键盘快捷键连击时间为 400 毫秒
vim.o.timeoutlen = 400

-- 分割窗口从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 不可见字符显示：空格显示为点
vim.o.list = true
vim.opt.listchars = { space = "·" }

-- 启用补全增强
vim.o.wildmenu = true

-- 隐藏 tabline
-- vim.o.showtabline = 1

-- 使用增强状态栏插件后不再需要 vim 的模式提醒
vim.o.showmode = false

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 设置背景颜色和终端颜色
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 折叠设置
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- 状态栏消息更简洁
vim.opt.shortmess:append("c")
