local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
}

function M.config()
	---@diagnostic disable-next-line: missing-fields
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"lua",
			"markdown",
			"markdown_inline",
			"bash",
			"python",
			"typescript",
			"tsx",
			"javascript",
      "css",
			"jsdoc",
		},
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return M
