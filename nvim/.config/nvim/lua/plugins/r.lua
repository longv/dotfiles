return {
  "R-nvim/R.nvim",
  lazy = false,
  config = function()
    require("r").setup({
      R_args = { "--quiet", "--no-save" },
      hook = {
        on_filetype = function()
          vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "<Plug>RDSendLine", {})
          vim.api.nvim_buf_set_keymap(0, "v", "<CR>", "<Plug>RSendSelection", {})
        end,
      },
      min_editor_width = 72,
      rconsole_width = 78,
      objbr_auto_start = true,
    })
  end,
}
