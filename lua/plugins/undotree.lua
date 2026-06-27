return {
  'mbbill/undotree',
  config = function()
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

    local function toggle_undotree()
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.bo[vim.api.nvim_win_get_buf(win)].filetype == 'undotree' then
          if vim.api.nvim_get_current_win() == win then
            vim.cmd.UndotreeToggle()
          else
            vim.api.nvim_set_current_win(win)
          end
          return
        end
      end
      vim.cmd.UndotreeToggle()
      vim.cmd.UndotreeFocus()
    end

    vim.keymap.set('n', '<leader>u', toggle_undotree, { desc = 'Undotree toggle focus' })
  end,
}
