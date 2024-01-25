return {
  "nvimtools/none-ls.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        --lua
        null_ls.builtins.formatting.stylua,
        --cpp
        --null_ls.builtins.diagnostics.cmake_lint,
        --null_ls.builtins.diagnostics.cppcheck,
        --null_ls.builtins.diagnostics.cpplint
        --matlab
        --null_ls.builtins.diagnostics.mlint
        --python
        --null_ls.builtins.diagnostics.mypy
        --null_ls.builtins.diagnostics.ruff
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        --rust
        null_ls.builtins.formatting.rustfmt
      },
    })
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
  end,
}
