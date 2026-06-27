return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("telescope").setup({})
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",  { desc = "Live grep" })
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>",    { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>",  { desc = "Help tags" })
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>",   { desc = "Recent files" })
  end,
}
