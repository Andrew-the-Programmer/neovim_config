require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all"
    ignore_install = { "latex" },
    ensure_installed = {
        "c",
        "cpp",
        "javascript",
        "typescript",
        "lua",
        "rust",
        "bash",
        -- "latex",
        "json",
    },

    sync_install = false,
    auto_install = true,

    indent = {
        enable = true,
        disable = { "latex" },
    },

    highlight = {
        enable = true,
        disable = { "latex" },
        -- additional_vim_regex_highlighting = { "latex", "markdown" },
    },
})
