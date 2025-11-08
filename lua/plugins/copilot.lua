return {
  {
    "zbirenbaum/copilot.lua",
    -- ensure loaded with the same conditions (or adjust)
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        ["*"] = false,
        python = true,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    opts = function(_, opts)
      require("copilot_cmp").setup(opts)
    end,
  },
}
