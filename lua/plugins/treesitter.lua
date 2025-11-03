-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function(_, opts)
      -- extend list of languages you want
      vim.list_extend(opts.ensure_installed, {
        "css",
        "latex",
        "norg",
        "scss",
        "svelte",
        "typst",
        "vue",
      })
      -- enable auto install of missing parsers
      opts.auto_install = true
      -- keep or update other settings
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
      return opts
    end,
  },
}
