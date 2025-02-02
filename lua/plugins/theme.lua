return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000, 
  --   config = function()
  --     require("catppuccin").setup({
  --       transparent_background = false,
  --     })
  --     vim.cmd.colorscheme("catppuccin")
  --   end
  -- }
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_enable_italic = false
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'mix'
    vim.g.gruvbox_material_statusline_style = 'original'
    vim.g.gruvbox_material_disable_italic_comment = true
    vim.g.gruvbox_material_transparent_background = 2
    vim.g.gruvbox_material_ui_contrast = 'high'
    vim.cmd.colorscheme('gruvbox-material')

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#77948b', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#b09c84', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#c37b90', bold=true })
  end
  --
  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- opts = {},
  -- config = function()
  --
  --   require("tokyonight").setup({
  --     transparent = true,
  --     styles = {
  --       keywords = { italic = false }
  --     }
  --   })
  --   vim.cmd[[colorscheme tokyonight-night]]
  -- end
}
