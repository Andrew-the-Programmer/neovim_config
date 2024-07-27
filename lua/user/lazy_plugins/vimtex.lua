return {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "aux",
            out_dir = "out",
            callback = 1,
            continuous = 1,
            executable = "latexmk",
            hooks = {},
            options = {
                "-verbose",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }

        -- vim.g.conceallevel = 2
        -- vim.g.vimtex_syntax_conceal = "abdgm"
        -- vim.g.tex_conceal = "abdgm"
        -- vim.g.vimtex_syntax_enabled = 1
    end,
}
