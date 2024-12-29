return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local db = require("alpha.themes.dashboard")
    local alpha = require("alpha")
    --db.section.header.val = {
    --}

    db.section.buttons.val = {
      db.button("f", "󰮗  Find Files", ":Telescope find_files <CR>"),
      db.button("r", "  Recently Used Files", ":Telescope oldfiles <CR>"),
      db.button("t", "󰊄  Find Text", ":Telescope live_grep <CR>"),
      -- only valid in Linux environments
      db.button("e", "  Configuration", ":e ~/.config/nvim/ <CR>"),
      -- valid in Windows environments
      -- db.button("e", "  Configuration", ":e C:\Users\<YourUsername>\AppData\Local\nvim\ <CR>"),
      db.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    db.section.footer.val = {
      "Maintain self-respect without arrgorance"
    }

    db.section.header.opts.hl = "Include"
    db.section.buttons.opts.hl = "Keyword"
    db.section.footer.opts.hl = "Type"

    db.opts.opts.noautocmd = true
    alpha.setup(db.opts)
  end,
}


