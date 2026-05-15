return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "slope",
        show_buffer_close_icons = true,
        show_close_icon = false,
      },
      
      highlights = {
        buffer_selected = {
          bold = true,
          italic = false,
        },

        buffer_visible = {
          bold = false,
        },

        background = {
          italic = false,
        },
      },

    })
  end,
}