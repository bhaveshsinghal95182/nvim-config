require "nvchad.autocmds"

-- open help command vertically
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  command = "wincmd L",
})

-- auto resize slipts when terminal is resized
vim.api.nvim_create_autocmd("VimResized", {
  command = "wincmd =",
})

-- restore cursor to file position in previous editing position
-- vim.api.nvim_create_autocmd("BuffReadPost", {
--   callback = function(args)
--     local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
--     local line_count = vim.api.nvim_buf_line_count(args.buf)
--     if mark[1] > 0 and mark[1] <= line_count then
--       vim.api.nvim_win_set_cursor(0, mark)
--       vim.schedule(function()
--         vim.cmd "normal! zz"
--       end)
--     end
--   end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("no_auto_comment", { clear = true }),
  pattern = "*",
  callback = function()
    -- vim.opt.local.formatoptions:remove({"c", "r", "o"})
  end,
})
