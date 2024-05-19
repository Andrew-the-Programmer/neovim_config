require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all"
    ensure_installed = {
        "c",
        "cpp",
        "vimdoc",
        "javascript",
        "typescript",
        "lua",
        "rust",
        "jsdoc",
        "bash",
        -- "latex",
    },

    sync_install = false,
    auto_install = true,

    indent = {
        enable = true
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
    },
})

--[[
local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
treesitter_parser_config.templ = {
    install_info = {
        url = "https://github.com/vrischmann/tree-sitter-templ.git",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "master",
    },
}

vim.treesitter.language.register("templ", "templ")
--]]
