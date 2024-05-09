local dashboard = require("alpha.themes.dashboard")

dashboard.section.buttons.val = {
	dashboard.button("f", " " .. "Find files", ":Telescope find_files <CR>"),
	dashboard.button("p", " " .. "Select project", ":Telescope neovim-project history <CR>"),
	dashboard.button("t", " " .. "Change theme", ":ThemeSwitcher <CR>"),
	dashboard.button("m", " " .. "Mason", ":Mason <CR>"),
	dashboard.button("l", "󰚰 " .. "LazyUI", ":Lazy <CR>"),
}
