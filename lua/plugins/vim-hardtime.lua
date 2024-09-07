return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    disabled_keys = {
     ["<Up>"] = {},
     ["<Down>"] = {},
     ["<Left>"] = {},
     ["<Right>"] = {},
    },
    allow_different_key = true,
    max_count = 15,
  },
}
