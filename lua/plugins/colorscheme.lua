-- lua/plugins/colorscheme.lua
return {
  {
    "dasupradyumna/midnight.nvim",
    name = "midnight",
    lazy = false,
    priority = 1000,
    -- no need to set vim.cmd here since it's not default
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
  },
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme onedark_dark")
    end,
  },
}
