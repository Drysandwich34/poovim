return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                            _         ",
      "    ____  ____  ____ _   __(_)___ ___ ",
      "   / __ \\/ __ \\/ __ \\ | / / / __ `__ \\",
      "  / /_/ / /_/ / /_/ / |/ / / / / / / /",
      " / .___/\\____/\\____/|___/_/_/ /_/ /_/ ",
      "/_/                                    ",
    }
    dashboard.section.header.opts.hl = "AlphaHeader"

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#FFD700" })
    dashboard.section.footer.val = "A super simple nvim config, nothing much"
    dashboard.section.buttons.val = {
	  dashboard.button("<leader> e", "  Open Current Directory", ":Explore<CR>"),
	  dashboard.button("<leader> f f", "󰍉  Find file", ":Telescope find_files <CR>"),
	  dashboard.button("<leader> f r", "󱑒  Recent files", ":Telescope oldfiles <CR>"),
	  dashboard.button("<leader> f g", "  Live Grep", "<cmd>Telescope live_grep<CR>"),
	  dashboard.button("<leader> f h", "󰋖  Search help/documentation", "<cmd>Telescope help_tags<CR>"),
	  dashboard.button("<leader> q", "󰈆  Quit", ":qa<CR>"),

 
}


    require("alpha").setup(dashboard.opts)
  end,
}
