if vim.fn.has("nvim-0.8.0") == 0 then
  vim.notify("forge requires at least nvim-0.8.0.1")
  return
end

if vim.g.loaded_forge == true then
  return
end
vim.g.loaded_forge = true
