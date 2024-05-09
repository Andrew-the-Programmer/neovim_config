return {
    "tpope/vim-commentary",
    config = function()
        -- require("commentary").setup()
        local autocmd = vim.api.nvim_create_autocmd
        vim.keymap.set("n", "<leader>/", "<cmd>Commentary<CR>", { noremap = true, silent = true })
    end,
}
