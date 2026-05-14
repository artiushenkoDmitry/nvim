--return {
--  "nvim-treesitter/nvim-treesitter",
--  build = ":TSUpdate",
--  config = function()
    -- nvim-treesitter 
--    local configs = require("nvim-treesitter.configs")
--    configs.setup({
--      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "javascript", "html" },
--      sync_install = false,
--      highlight = { enable = true },
--      indent = { enable = true },  
--    })
--  end
--}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
