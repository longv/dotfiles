return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewFocusFiles", "DiffviewToggleFiles" },
  keys = {
    {
      "<leader>gd",
      ":DiffviewOpen ",
      desc = "Git: Diff View (tab-complete ref, blank = HEAD)",
    },
    {
      "<leader>gq",
      "<cmd>DiffviewClose<cr>",
      desc = "Git: Close Diff View",
    },
  },
}
