return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        return require("user.plugins-config.comments-config")
    end
}
