return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
	config = function()
		require("gitsigns").setup()

		--vim.keymap.set(
		--	"n",
		--	"<leader>gp",
		--	require("gitsigns").prev_hunk,
		--	{ buffer = bufnr, desc = "[G]o to [P]revious Hunk" }
		--)
		--vim.keymap.set(
		--	"n",
		--	"<leader>gn",
		--	require("gitsigns").next_hunk,
		--	{ buffer = bufnr, desc = "[G]o to [N]ext Hunk" }
		--)
		--vim.keymap.set(
		--	"n",
		--	"<leader>ph",
		--	require("gitsigns").preview_hunk,
		--	{ buffer = bufnr, desc = "[P]review [H]unk" }
		--)
		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = '[G]o to [N]ext Hunk'})
		vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = '[G]o to [N]ext Hunk'})
	end,
}
