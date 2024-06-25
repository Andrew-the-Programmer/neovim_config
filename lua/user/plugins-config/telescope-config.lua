local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        path_display = { "smart" },
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next, -- move to next result
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
    },
})

-- telescope.load_extension("fzf")

telescope.setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find file" })
vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "find git file" })
vim.keymap.set("n", "<leader>fs", function()
    builtin.grep_string({ search = vim.fn.input("Grep >") })
end, { desc = "grep string" })
vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "live grep" })
vim.keymap.set("n", "<leader>of", builtin.oldfiles, { desc = "find recent file" })

require("telescope").load_extension("ui-select")
