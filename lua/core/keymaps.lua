vim.defer_fn(function()
  -- 本地变量
  local keymap = vim.keymap
  -- if keymao then
    -- 复用 opt 参数
    local opt = { noremap = true, silent = true }

    keymap.set("i", "<A-q>", "<ESC>", { desc = "Exit insert mode"})
    keymap.set("v", "<A-q>", "<ESC>", { desc = "Exit visual mode"})

    -- Normal 模式
    -- map('mode', 'key', 'action', 'options')
    -- 取消 s 默认功能
    keymap.set("n", "s", "", opt)

    --  分屏
    keymap.set("n", "<leader>sv", ":vsp<CR>", opt)
    keymap.set("n", "<leader>sh", ":sp<CR>", opt)

    -- 关闭当前窗口
    keymap.set("n", "<leader>sc", "<C-w>c", opt)
    -- 关闭其他窗口
    keymap.set("n", "<leader>so", "<C-w>o", opt)

    -- 光标跳转
    keymap.set("n", "<A-h>", "<C-w>h", opt)
    keymap.set("n", "<A-j>", "<C-w>j", opt)
    keymap.set("n", "<A-k>", "<C-w>k", opt)
    keymap.set("n", "<A-l>", "<C-w>l", opt)

    -- 左右比例控制
    keymap.set("n", "<C-Left>", ":vertical resize +10<CR>", opt)
    keymap.set("n", "<C-Right>", ":vertical resize -10<CR>", opt)
    -- 上下比例
    keymap.set("n", "<C-Down>", ":resize -5<CR>", opt)
    keymap.set("n", "<C-Up>", ":resize +5<CR>", opt)
    -- 等比例
    keymap.set("n", "se", "<C-w>", opt)


    -- Visual 模式
    -- 缩进代码
    keymap.set("v", "<", "<gv", opt)
    keymap.set("v", ">", ">gv", opt)

    -- bufferline
    -- 左右 tab 切换
    --keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
    --keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
  --end
end, 0)
