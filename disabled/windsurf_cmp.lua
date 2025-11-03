-- ~/.config/nvim/lua/plugins/windsurf_cmp.lua
-- {
return {
  "Exafunction/windsurf.nvim", -- codeium renamed/alias
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- Setup codeium/windsurf
    require("codeium").setup({
      -- disable built-in cmp source if you want to do custom mapping
      enable_cmp_source = true, -- enable the nvim-cmp source. (true by default) :contentReference[oaicite:3]{index=3}
      virtual_text = { -- optional ghost/inline text mode
        enabled = false, -- turn on if you prefer ghost text instead of menu. :contentReference[oaicite:4]{index=4}
        filetypes = { -- customise per filetype
          -- e.g. markdown = false,
        },
        default_filetype_enabled = false,
      },
      key_bindings = {
        accept = "<Tab>", -- accept suggestion
        next = "<M-]>", -- next suggestion
        prev = "<M-[>", -- previous suggestion
        clear = "<C-]>", -- clear suggestion
      },
      -- filetype_exclude, idle_delay, etc — you can add more here if you like
    })

    -- Setup nvim-cmp to integrate with codeium source
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          -- if you use luasnip:
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm({ select = true })
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
      }),
      sources = cmp.config.sources({
        { name = "codeium" }, -- Put Codeium as first source so suggestions appear prominently :contentReference[oaicite:5]{index=5}
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
      experimental = {
        ghost_text = true, -- enable ghost text suggestion if you like inline style :contentReference[oaicite:6]{index=6}
      },
      formatting = {
        format = function(entry, vim_item)
          -- show the source name in menu
          vim_item.menu = "[" .. entry.source.name .. "]"
          return vim_item
        end,
      },
    })
  end,
}
--}
