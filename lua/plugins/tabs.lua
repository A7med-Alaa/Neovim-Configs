return {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        style_preset = {
          require("bufferline").style_preset.minimal,
          require("bufferline").style_preset.no_italic,
          require("bufferline").style_preset.no_bold,
        },
        show_buffer_icons = false,
        show_close_icons = false,
        show_buffer_close_icons = false,
        always_show_bufferline = false,
        auto_toggle_bufferline = true,
        diagnostics = "nvim_lsp",
        enforce_regular_tabs = true,
        pick = {
          alphabet = "abcdefghijklmopqrstuvwxyz1234567890",
        },
      },
    })

    vim.keymap.set('n', '<TAB>', ':set showtabline=2<CR> | :BufferLinePick<CR>')
    vim.keymap.set('n', '<S-TAB>', ':set showtabline=2<CR> | :BufferLinePickClose<CR>')
    vim.keymap.set('n', '<leader>bco', ':BufferLineCloseOthers<CR>')
    vim.keymap.set('n', '<leader>bcr', ':BufferLineCloseRight<CR>')
    vim.keymap.set('n', '<leader>bcl', ':BufferLineCloseLeft<CR>')

  end
}
