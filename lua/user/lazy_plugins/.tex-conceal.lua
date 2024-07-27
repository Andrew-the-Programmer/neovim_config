return {
    "KeitaNakamura/tex-conceal.vim",
    -- opts = {},
    config = function()
        vim.g.tex_conceal_frac = 1
        vim.g.conceallevel = 1
        vim.g.tex_conceal = "abdgm"

        -- require("tex-conceal").setup()
    end,
}
