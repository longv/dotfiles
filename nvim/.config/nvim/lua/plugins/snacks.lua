-- Show dotfiles and git-ignored files in the snacks explorer by default.
-- (This replaces the nvim-tree `filters = { git_ignored = false }` idea —
--  this config uses snacks.nvim's explorer, not nvim-tree.)
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- dotfiles (.env, .gitignore, ...)
          ignored = true, -- git-ignored files (e.g. console recordings)
        },
      },
    },
  },
}
