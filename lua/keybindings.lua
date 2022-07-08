local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true }
keymap('n', '<c-j>', "<c-w>j", opts)
keymap('n', '<c-h>', "<c-w>h", opts)
keymap('n', '<c-k>', "<c-w>k", opts)
keymap('n', '<c-l>', "<c-w>l", opts)


-- vim.keymap.set("n", "K", vim.fn.CocAction('jumpDefinition'), { buffer = 0 })
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer = 0})
-- vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer = 0})
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, {buffer = 0})
-- vim.keymap.set("n", "gw", vim.lsp.buf.document_symbol, {buffer = 0})
-- vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, {buffer = 0})
-- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
-- vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, {buffer = 0})
-- vim.keymap.set("n", "<leader>af", vim.lsp.buf.code_action, {buffer = 0})
-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {buffer = 0})
vim.cmd("source ~/.config/nvim/lua/coc-config.vim")
