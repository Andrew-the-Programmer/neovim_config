return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
    },

    config = function()
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        local handlers = {
            function(server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup {
                    capabilities = capabilities
                }
            end,

            ["lua_ls"] = function()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup {
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            runtime = { version = "Lua 5.1" },
                            diagnostics = {
                                globals = { "vim", "it", "describe", "before_each", "after_each" },
                            }
                        }
                    }
                }
            end,
        }

        require("mason-lspconfig").setup({
            handlers = handlers,
        })

    end
}
