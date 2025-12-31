-- Load neo-tree (https://github.com/nvim-neo-tree/neo-tree.nvim)

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "left",
        width = 32,
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.opt.relativenumber = true
          end,
        }
      },
    })
    vim.keymap.set("n", "<leader>tt", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<leader>tc", ":Neotree close<CR>", {})
    vim.keymap.set("n", "<leader>tg", ":Neotree git_status float<CR>", {})
    -- P toggles Preview
    -- s open in vertical split
    -- S open in horizontal split
    -- a add file or directory/
    -- d delete file or directory
    -- r rename file or directory
  end,
}
