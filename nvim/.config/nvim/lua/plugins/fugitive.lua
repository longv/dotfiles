return {
  "tpope/vim-fugitive",
  cmd = { "Git", "Gvdiffsplit", "Gdiffsplit", "Gread", "Gwrite", "Gclog", "Gedit" },
  keys = {
    {
      "<leader>gs",
      function()
        vim.cmd.Git()
      end,
    },
  },
}
