-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }

-- Make sure you have nvim-lspconfig installed
-- local lspconfig = require('lspconfig')
--
-- -- Setup keybindings when LSP attaches
-- local on_attach = function(client, bufnr)
--     local opts = { noremap = true, silent = true, buffer = bufnr }
--
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--     vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
--     vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
-- end
--
-- lspconfig.clangd.setup({
--     on_attach = on_attach,
--     cmd = {
--         "clangd",
--         "--background-index",
--         "--clang-tidy",
--         "--header-insertion=iwyu",
--         "--completion-style=detailed",
--         "--function-arg-placeholders",
--     },
--     init_options = {
--         clangdFileStatus = true,
--         usePlaceholders = true,
--         completeUnimported = true,
--         semanticHighlighting = true,
--     },
-- })
