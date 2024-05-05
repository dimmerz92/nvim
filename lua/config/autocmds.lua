local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear=true })
end

-- highlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = augroup("highlight-yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- create directory when saving file if not exists
vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Create directory when saving file it not exists",
  group = augroup("auto_create_dir"),
  callback = function(event)
    if event.match:match("^%w%w+:[\\/][\\/]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})
