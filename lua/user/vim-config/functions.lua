function _G.ReloadConfig()
    vim.cmd("source " .. vim.env.MYVIMRC)
    vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command(
    "ReloadConfig",
    ":lua ReloadConfig()<CR>",
    { nargs = 0, desc = "Reload neovim config" }
)
