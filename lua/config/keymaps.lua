vim.g.mapleader = " "

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<A-1>", vim.cmd.bprev)
vim.keymap.set("n","<A-2>", vim.cmd.bnext)
vim.keymap.set("n","<C-k>", ':m .-2<CR>',{noremap = true, silent = true})
vim.keymap.set("n","<C-j>", ':m .+1<CR>',{noremap = true, silent = true})



vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.keymap.set("n", "a", function()
      local input = vim.fn.input("Please give filename: ")
      if input ~= "" then
        vim.cmd("edit " .. vim.fn.fnameescape(input))
      end
    end, { buffer = true })
  end,
})
