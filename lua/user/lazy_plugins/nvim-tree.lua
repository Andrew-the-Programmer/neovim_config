return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set("n", "<C-t>", "<cmd>NvimTreeToggle<CR>", { desc = "toggle nvim-tree" })
        require("nvim-tree").setup()
    end,
}
