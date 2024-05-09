return {
	"rmagatti/auto-session",
	dependencies = {
		-- "nvim-lualine/lualine.nvim",
	},
    --[[
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},
			cwd_change_handling = {
				restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
				pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
				post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
					require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
				end,
			},
			sections = {
				lualine_c = {
					require("auto-session.lib").current_session_name,
				},
			},
		})

		vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
			noremap = true,
		})
	end,
    --]]
}
