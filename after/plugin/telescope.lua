--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function() 
--	builtin.grep_string({ search = vim.fn.input("Grep > ") });
--end)

local map = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = false}

-- Telescope mappings
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
map("n", "<leader>fp", "<cmd>Telescope project<cr>", opts)
map("n", "<leader>fo", "<cmd>Telescope repo list<cr>", opts)
map("n", "<leader>fm", "<cmd>Telescope keymaps<cr>", opts)
map("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", opts)
map("n", "<leader>fn", ":lua require'jeff.telescope'.find_notes()<cr>", opts)
map("n", "<leader>fng", ":lua require'jeff.telescope'.grep_notes()<cr>", opts)
map("n", "<leader>pp", "<cmd>Telescope builtin<cr>", opts)
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
map("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>'", "<cmd>Telescope marks<cr>", opts)
map("n", "<leader>f", "<cmd>Telescope git_files<cr>", opts)


