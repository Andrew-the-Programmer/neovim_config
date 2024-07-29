return {
    "SirVer/ultisnips",
    config = function()
        vim.g.UltiSnipsExpandTrigger = "<C-y>"
        vim.g.UltiSnipsJumpForwardTrigger = "<C-n>"
        vim.g.UltiSnipsJumpBackwardTrigger = "<C-N>"
        vim.g.UltiSnipsSnippetDirectories={"UltiSnips", "my_snippets"}
    end,
    opts = {},
}
