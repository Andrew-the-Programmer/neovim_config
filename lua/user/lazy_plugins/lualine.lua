return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		-- "rmagatti/auto-session",
	},
	config = function()
		require("lualine").setup({
			-- sections = {
			-- 	lualine_c = { require("auto-session.lib").current_session_name },
			-- },
		})
	end,
}
