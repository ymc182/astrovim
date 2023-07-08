local get_icon = require("astronvim.utils").get_icon
return {
  "lewis6991/gitsigns.nvim",
  enabled = vim.fn.executable "git" == 1,
  event = "User AstroGitFile",
  opts = {
    signs = {
      add = { text = get_icon "GitSign" },
      change = { text = get_icon "GitSign" },
      delete = { text = get_icon "GitSign" },
      topdelete = { text = get_icon "GitSign" },
      changedelete = { text = get_icon "GitSign" },
      untracked = { text = get_icon "GitSign" },
    },
    worktrees = vim.g.git_worktrees,
  },
  -- {
  --   'tribela/vim-transparent',
  --   enabled= true,
  --   lazy = false
  -- }
  {
  "xiyaowong/nvim-transparent",
    lazy = false,
    enabled = true,
    opts = {
      groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {
        "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal" -- NvimTree
      }, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
    }
  
  },
}
