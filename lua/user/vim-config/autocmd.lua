-- load language specific configs
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "*" },
    callback = function(args)
        local ft = vim.bo[args.buf].filetype
        local file = "user.language_specific." .. ft
        pcall(require, file)
    end,
})
