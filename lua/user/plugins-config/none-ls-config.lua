local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- bash
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.diagnostics.shellcheck,

        -- python
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,

        -- c++
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.cpplint,

        -- lua
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,

        null_ls.builtins.diagnostics.erb_lint,

        -- ruby
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,

        -- js
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,

    },
})

vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, {desc="format buffer"} )
