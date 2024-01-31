return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.rust_analyzer.setup({})
			lspconfig.lua_ls.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
			vim.keymap.set("n", "<leader>gI", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Type [D]efinition" })
			vim.keymap.set(
				"n",
				"<leader>ds",
				require("telescope.builtin").lsp_document_symbols,
				{ desc = "[D]ocument [S]ymbols" }
			)
			vim.keymap.set(
				"n",
				"<leader>ws",
				require("telescope.builtin").lsp_dynamic_workspace_symbols,
				{ desc = "[W]orkspace [S]ymbols" }
			)

			vim.keymap.set("n", "<leader>ej", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
			vim.keymap.set("n", "<leader>ek", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
			vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
		end,
	},
}
