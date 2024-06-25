return {
    "nvim-pack/nvim-spectre",
    config = function()
        -- require("spectre").setup()
        vim.keymap.set("n", "<leader>ss", "<cmd>Spectre toggle<CR>", {
            desc = "Toggle Spectre",
        })
        vim.keymap.set("n", "<leader>sw", "<cmd>Spectre open_visual({select_word=true})<CR>", {
            desc = "Search current word",
        })
        vim.keymap.set("n", "<leader>sf", "<cmd>Spectre open_file_search({select_word=true})<CR>", {
            desc = "Search on current file",
        })
    end,
}
