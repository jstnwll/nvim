--Move windows
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

--Git Signs
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

--NeoTree
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

--None LS
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--NVIM Tmux Navigation
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

--Vim Test
vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {})
vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
