require("nvchad.configs.lspconfig").defaults()

vim.lsp.enable {
    "gopls",
    "lua_ls",
}

-- read :h vim.lsp.config for changing options of lsp servers
