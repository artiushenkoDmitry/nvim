return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").preview_scrolling_down,
            ["<C-k>"] = require("telescope.actions").preview_scrolling_up,
          },
   
          n = {
            ["<C-j>"] = require("telescope.actions").preview_scrolling_down,
            ["<C-k>"] = require("telescope.actions").preview_scrolling_up,
          },
        },
        
        layout_strategy = 'vertical',
        layout_config = {
          vertical = {
            width = 0.95,
            height = 0.95,
            preview_height = 0.6,
          },
        },  
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      },
    })

    telescope.load_extension('fzf')

    vim.keymap.set('n', 'FF',function()
      builtin.find_files({
        previewer = false,
      })
    end, {})
    vim.keymap.set('n', 'FG', builtin.live_grep, {})
  end,
}