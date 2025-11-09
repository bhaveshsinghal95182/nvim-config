require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "rust_analyzer", "eslint", "tailwindcss", "ast_grep"}
vim.lsp.enable(servers)
