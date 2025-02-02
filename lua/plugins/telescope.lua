return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-telescope/telescope-ui-select.nvim'},
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }

      require("telescope").load_extension("ui-select")
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({search = vim.fn.input("Grep > ")})
      end, { desc = 'Telescope find word under cursor' })
      vim.keymap.set('n', '<leader>pws', function()
        local word = vim.fn.expand("<cword>")
        builtin.grep_string({search = word})
      end, { desc = 'Telescope find word under cursor' })
      vim.keymap.set('n', '<leader>pWs', function()
        local word = vim.fn.expand("<cWORD>")
        builtin.grep_string({search = word})
      end, { desc = 'Telescope find WORD under cursor' })
    end
  },
}
