return {
	"github/copilot.vim",
	config = function()
		vim.keymap.set("i", "<C-b>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })

		vim.g.copilot_no_tab_map = true
    --vim.keymap.set('i', '<C-e>', '<Plug>(copilot-accept-word)')
    -- vim.keymap.set('i', '<C-1>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '', '<Plug>(copilot-accept-word)')
    vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '<C-v>', '<Plug>(copilot-previous)')
	end,
}
