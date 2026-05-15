return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    require("tokyonight").setup({
      style = "storm",

      transparent = false,

      terminal_colors = true,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        sidebars = "dark",
        floats = "dark",
      },

      sidebars = {
        "qf",
        "help",
        "neo-tree",
      },
    })

    vim.cmd.colorscheme("tokyonight")
  end,
}