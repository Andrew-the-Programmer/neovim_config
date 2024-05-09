return {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
        require("mason").setup({
            auto_install = true,
            ensure_installed = {
                "clangd",
                "lua_ls",
                "clang-format",
                "codelldb",
            },
        })

    end
}
