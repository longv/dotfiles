return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
    end,
    keys = {
      {
        "<leader>mi",
        ":MoltenInit<CR>",
        mode = "n",
        silent = true,
        desc = "Molten: initialize kernel",
      },
      {
        "<leader>me",
        ":MoltenEvaluateOperator<CR>",
        mode = "n",
        silent = true,
        desc = "Molten: run operator selection",
      },
      {
        "<leader>ml",
        ":MoltenEvaluateLine<CR>",
        mode = "n",
        silent = true,
        desc = "Molten: evaluate line",
      },
      {
        "<leader>mr",
        ":MoltenReevaluateCell<CR>",
        mode = "n",
        silent = true,
        desc = "Molten: re-evaluate cell",
      },
      {
        "<leader>mv",
        ":<C-u>MoltenEvaluateVisual<CR><Esc>",
        mode = "v",
        silent = true,
        desc = "Molten: evaluate visual selection",
      },
    },
  },
}
