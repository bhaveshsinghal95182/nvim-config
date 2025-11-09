require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle {
    find_file = true,
    focus = true,
  }
end, { desc = "Toggles tree view for files" })

map("i", "<C-/>", function()
  vim.cmd.stopinsert()

  require("mini.comment").operator { line_wise = true }

  vim.cmd.startinsert { eol = true }
end)

map(
  "n",
  "<leader>tt",
  ":lua require('base46').toggle_transparency()<CR>",
  { noremap = true, silent = true, desc = "Toggle Background Transparency" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
