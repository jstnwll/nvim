vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

-- Cmp
local cmp = require("cmp")
local luasnip = require("luasnip")

vim.keymap.set("i", "<C-n>", cmp.mapping.select_next_item(), { desc = "CMP: Select next item" })
vim.keymap.set("i", "<C-p>", cmp.mapping.select_prev_item(), { desc = "CMP: Select previous item" })
vim.keymap.set("i", "<C-b>", cmp.mapping.scroll_docs(-4), { desc = "CMP: Scroll docs up" })
vim.keymap.set("i", "<C-f>", cmp.mapping.scroll_docs(4), { desc = "CMP: Scroll docs down" })
vim.keymap.set("i", "<C-y>", cmp.mapping.confirm({ select = true }), { desc = "CMP: Confirm selection" })
vim.keymap.set("i", "<C-Space>", cmp.mapping.complete(), { desc = "CMP: Trigger completion" })

vim.keymap.set({ "i", "s" }, "<C-l>", function()
	if luasnip.expand_or_locally_jumpable() then
		luasnip.expand_or_jump()
	end
end, { desc = "LuaSnip: Expand or jump" })

vim.keymap.set({ "i", "s" }, "<C-h>", function()
	if luasnip.locally_jumpable(-1) then
		luasnip.jump(-1)
	end
end, { desc = "LuaSnip: Jump backwards" })

-- Lspconfig
local telescope = require("telescope.builtin")

vim.keymap.set("n", "gd", telescope.lsp_definitions, { desc = "[G]oto [D]efinition" })
vim.keymap.set("n", "gr", telescope.lsp_references, { desc = "[G]oto [R]eferences" })
vim.keymap.set("n", "gI", telescope.lsp_implementations, { desc = "[G]oto [I]mplementation" })
vim.keymap.set("n", "<leader>D", telescope.lsp_type_definitions, { desc = "Type [D]efinition" })
vim.keymap.set("n", "<leader>ds", telescope.lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })
vim.keymap.set("n", "<leader>ws", telescope.lsp_dynamic_workspace_symbols, { desc = "[W]orkspace [S]ymbols" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })
vim.keymap.set("n", "<leader>th", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }))
end, { desc = "[T]oggle Inlay [H]ints" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show Line Diagnostics" })

return {}
