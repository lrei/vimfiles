-- lua/plugins/smart-splits.lua
return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false, -- load immediately so the keys work everywhere
    config = function()
      local ss = require("smart-splits")

      ss.setup({
        multiplexer_integration = "tmux", -- seamless across tmux panes
        -- optional tweaks:
        -- default_amount = 3,
        -- at_edge = "wrap", -- or "stop"
        -- cursor_follows_swapped_bufs = true,
        -- resize_mode = { quit_key = "<ESC>" },
      })

      -- movement (Ctrl + h/j/k/l)
      vim.keymap.set("n", "<C-h>", ss.move_cursor_left, { desc = "Smart move left" })
      vim.keymap.set("n", "<C-j>", ss.move_cursor_down, { desc = "Smart move down" })
      vim.keymap.set("n", "<C-k>", ss.move_cursor_up, { desc = "Smart move up" })
      vim.keymap.set("n", "<C-l>", ss.move_cursor_right, { desc = "Smart move right" })

      -- resizing (Alt/Option + arrows)
      -- If Option doesn’t send Meta in your terminal, switch these to <leader><arrow> or similar.
      vim.keymap.set("n", "<M-Left>", ss.resize_left, { desc = "Resize left" })
      vim.keymap.set("n", "<M-Down>", ss.resize_down, { desc = "Resize down" })
      vim.keymap.set("n", "<M-Up>", ss.resize_up, { desc = "Resize up" })
      vim.keymap.set("n", "<M-Right>", ss.resize_right, { desc = "Resize right" })

      -- **buffer swapping** (from docs)
      -- Swap the *current buffer* with the buffer in the adjacent split.
      -- Using <leader><leader> + h/j/k/l keeps it ergonomic and avoids Alt on macOS.
      vim.keymap.set("n", "<leader><leader>h", ss.swap_buf_left, { desc = "Swap buffer with left split" })
      vim.keymap.set("n", "<leader><leader>j", ss.swap_buf_down, { desc = "Swap buffer with below split" })
      vim.keymap.set("n", "<leader><leader>k", ss.swap_buf_up, { desc = "Swap buffer with above split" })
      vim.keymap.set("n", "<leader><leader>l", ss.swap_buf_right, { desc = "Swap buffer with right split" })
    end,
  },
}
