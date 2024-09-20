return
{
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.hi 'Comment gui=none'
      vim.g.tokyonight_disable_background = false 

      local bg_transparent = true

      local toggle_transparency = function()
          bg_transparent = not bg_transparent
          vim.g.tokyonight_disable_background = bg_transparent
          vim.cmd [[colorscheme tokyonight]]
      end

      vim.keymap.set('n', '<leader>bg', toggle_transparency, {noremap = true, silent = true})
    end
}
