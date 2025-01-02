vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- copy/paste to OS clipboard
vim.keymap.set("v", "<leader>y", '"+y`<gv')
vim.keymap.set("n", "<leader>pt", '"+p')

-- paste from OS clipboard in command mode (good for quickly grepping)
vim.keymap.set("c", "<C-p>", "<C-r>+")
