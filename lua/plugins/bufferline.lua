return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" },
    config = function()
      local bufferline = require("bufferline")
      bufferline.setup({ 
        options = {
          -- sidebar
          offsets = {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
          },
        }
      })

      -- set keymaps
      local keymap = vim.keymap
      keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = " "})
      keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = " "})
    end,
}
