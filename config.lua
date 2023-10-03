-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- remap hjkl cursor keys to jikl in both normal and visual mode for more intuitive cursor movement
-- lvim.keys.normal_mode["k"] = "j"
-- lvim.keys.normal_mode["j"] = "h"
-- lvim.keys.normal_mode["i"] = "k"
-- lvim.keys.normal_mode["h"] = "i"

-- lvim.keys.visual_mode["k"] = "j"
-- lvim.keys.visual_mode["j"] = "h"
-- lvim.keys.visual_mode["i"] = "k"
-- lvim.keys.visual_mode["h"] = "i"


-- init program
local session_file = "~/.config/lvim/sessions/default.vim"
if vim.fn.filereadable(vim.fn.expand(session_file)) == 1 then
  vim.cmd("source " .. session_file)
end


-- map leader+o for toggling symbol outline
lvim.builtin.which_key.mappings["o"] = {"<cmd>SymbolsOutline<CR>", "SymbolsOutline"}

-- map leader+t to open a terminal in a horizontal split pane with size 15(lines)
lvim.builtin.which_key.mappings["t"] = {"<cmd>split | resize 15 | term<CR>", "Horizontal Terminal" }

-- map leader+x to force close all
lvim.builtin.which_key.mappings["x"] = { "<cmd>qa!<CR>", "Force Close LunarVim" }

-- map leader+arrow keys to switch between windows
lvim.builtin.which_key.mappings["<Left>"]  = { "<C-W>h", "Move to left window" }
lvim.builtin.which_key.mappings["<Right>"] = { "<C-W>l", "Move to right window" }
lvim.builtin.which_key.mappings["<Up>"]    = { "<C-W>k", "Move to upper window" }
lvim.builtin.which_key.mappings["<Down>"]  = { "<C-W>j", "Move to lower window" }


-- Lvim Pluging List start here
lvim.plugins = {

  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup{
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            'class',
            'function',
            'method',
          },
        },
      }
    end
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
}



-- symbol outline configuration
local opts = {
  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = false,
  position = 'right',
  relative_width = true,
  width = 25,
  auto_close = false,
  show_numbers = false,
  show_relative_numbers = false,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  autofold_depth = nil,
  auto_unfold_hover = true,
  fold_markers = { '', '' },
  wrap = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "W",
    unfold_all = "E",
    fold_reset = "R",
  },
  lsp_blacklist = {},
  symbol_blacklist = {},
  symbols = {
    File = { icon = "", hl = "@text.uri" },
    Module = { icon = "", hl = "@namespace" },
    Namespace = { icon = "", hl = "@namespace" },
    Package = { icon = "", hl = "@namespace" },
    Class = { icon = "𝓒", hl = "@type" },
    Method = { icon = "ƒ", hl = "@method" },
    Property = { icon = "", hl = "@method" },
    Field = { icon = "", hl = "@field" },
    Constructor = { icon = "", hl = "@constructor" },
    Enum = { icon = "ℰ", hl = "@type" },
    Interface = { icon = "ﰮ", hl = "@type" },
    Function = { icon = "", hl = "@function" },
    Variable = { icon = "", hl = "@constant" },
    Constant = { icon = "", hl = "@constant" },
    String = { icon = "𝓐", hl = "@string" },
    Number = { icon = "#", hl = "@number" },
    Boolean = { icon = "⊨", hl = "@boolean" },
    Array = { icon = "", hl = "@constant" },
    Object = { icon = "⦿", hl = "@type" },
    Key = { icon = "🔐", hl = "@type" },
    Null = { icon = "NULL", hl = "@type" },
    EnumMember = { icon = "", hl = "@field" },
    Struct = { icon = "𝓢", hl = "@type" },
    Event = { icon = "🗲", hl = "@type" },
    Operator = { icon = "+", hl = "@operator" },
    TypeParameter = { icon = "𝙏", hl = "@parameter" },
    Component = { icon = "", hl = "@function" },
    Fragment = { icon = "", hl = "@constant" },
  },
}

