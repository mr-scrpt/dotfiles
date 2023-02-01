require('telescope').setup{
    defaults = {
      file_ignore_patterns = {"node_modules"},
      mappings = {
        n = {
          ['<leader>c'] = require('telescope.actions').delete_buffer
        }
      }
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        grouped = true,
        hidden = true
      },
    },
    pickers = {
      find_files = {
        -- hidden = true
      }
    }
  }

require("telescope").load_extension "file_browser"
require('telescope').load_extension('fzf')
vim.api.nvim_set_keymap(
  "n",
  "<leader>fo",
  ":Telescope buffers<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fr",
  ":Telescope file_browser<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
   "n",
   "<leader>fb",
  ":Telescope file_browser path=%:p:h<cr>",
   { noremap = true }
 )
