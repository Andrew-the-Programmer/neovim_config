return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        return require("user.plugins-config.treesitter-config")
    end
}
