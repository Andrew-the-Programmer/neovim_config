return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
        return require("user.plugins-config.none-ls-config")
    end,
}
