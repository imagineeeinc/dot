-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Windows Specific
if vim.loop.os_uname().sysname == "Windows_NT" then
  -- Enable powershell as your default shell
  vim.opt.shell = "pwsh.exe -NoLogo"
  vim.opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.cmd [[
      let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
      set shellquote= shellxquote=
    ]]

    -- Set a compatible clipboard manager
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
  lvim.builtin.nvimtree.setup.view.width = 25
else
  lvim.builtin.nvimtree.setup.view.width = 20
end

-- Custom Config start

vim.cmd.colorscheme = "catppuccin"
lvim.use_icons = true
lvim.leader = "space"
lvim.builtin.treesitter.rainbow.enable = true

vim.g.transparent_background = true        -- transparent background(Default: false)
lvim.transparent_window = true
vim.g.italic_comments = true               -- italic comments(Default: true)
vim.g.italic_keywords = true               -- italic keywords(Default: true)
vim.g.italic_functions = true              -- italic functions(Default: false)
vim.g.italic_variables = true              -- italic variables(Default: false)
vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.g.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.g.tabstop = 2 -- insert 2 spaces for a tab

lvim.plugins = {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    config = function ()
      vim.cmd ("let g:minimap_width = 10")
      vim.cmd ("let g:minimap_auto_start = 1")
      vim.cmd ("let g:minimap_auto_start_win_enter = 1")
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
    require("numb").setup {
      show_numbers = true, -- Enable 'number' for the window while peeking
      show_cursorline = true, -- Enable 'cursorline' for the window while peeking
    }
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
    end,
  },
  {
    "npxbr/glow.nvim",
    ft = {"markdown"},
    build = "apt install glow",
    config = true, cmd = "Glow"
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
          -- All these keys will be mapped to their corresponding default scrolling animation
          mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
          hide_cursor = true,          -- Hide cursor while scrolling
          stop_eof = true,             -- Stop at <EOF> when scrolling downwards
          use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
          respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
          cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
          easing_function = nil,        -- Default easing function
          pre_hook = nil,              -- Function to run before the scrolling animation starts
          post_hook = nil,              -- Function to run after the scrolling animation ends
          })
    end
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "natecraddock/workspaces.nvim",
    config = function()
      require("workspaces").setup()
    end,
  },
  {
    "itchyny/vim-cursorword",
      event = {"BufEnter", "BufNewFile"},
      config = function()
        vim.api.nvim_command("augroup user_plugin_cursorword")
        vim.api.nvim_command("autocmd!")
        vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
        vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
        vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
        vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
        vim.api.nvim_command("augroup END")
        end
  },
-- {
--   'nvim-telescope/telescope.nvim', 
--   dependencies = { 'nvim-lua/plenary.nvim' }
-- },
-- {
--   "nvim-telescope/telescope-project.nvim",
--   event = "BufWinEnter",
--   setup = function()
--     vim.cmd [[packadd telescope.nvim]]
--   end,
-- },
  {
    "wakatime/vim-wakatime"
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    "brooth/far.vim",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  { "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
    },
  },
  {
    "alaviss/nim.nvim"
  },
  {
    "vimpostor/vim-tpipeline"
  },
  {
    "ixru/nvim-markdown"
  },
  {
    "sindrets/winshift.nvim",
    config = function()
      require("winshift").setup({
      highlight_moving_win = true,  -- Highlight the window being moved
      focused_hl_group = "Visual",  -- The highlight group used for the moving window
      moving_win_options = {
        -- These are local options applied to the moving window while it's
        -- being moved. They are unset when you leave Win-Move mode.
        wrap = false,
        cursorline = false,
        cursorcolumn = false,
        colorcolumn = "",
      },
      keymaps = {
        disable_defaults = false, -- Disable the default keymaps
        win_move_mode = {
          ["h"] = "left",
          ["j"] = "down",
          ["k"] = "up",
          ["l"] = "right",
          ["H"] = "far_left",
          ["J"] = "far_down",
          ["K"] = "far_up",
          ["L"] = "far_right",
          ["<left>"] = "left",
          ["<down>"] = "down",
          ["<up>"] = "up",
          ["<right>"] = "right",
          ["<S-left>"] = "far_left",
          ["<S-down>"] = "far_down",
          ["<S-up>"] = "far_up",
          ["<S-right>"] = "far_right",
        },
      },
      ---A function that should prompt the user to select a window.
      ---
      ---The window picker is used to select a window while swapping windows with
      ---`:WinShift swap`.
      ---@return integer? winid # Either the selected window ID, or `nil` to
      ---   indicate that the user cancelled / gave an invalid selection.
      window_picker = function()
        return require("winshift.lib").pick_window({
          -- A string of chars used as identifiers by the window picker.
          picker_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
          filter_rules = {
            -- This table allows you to indicate to the window picker that a window
            -- should be ignored if its buffer matches any of the following criteria.
            cur_win = true, -- Filter out the current window
            floats = true,  -- Filter out floating windows
            filetype = {},  -- List of ignored file types
            buftype = {},   -- List of ignored buftypes
            bufname = {},   -- List of vim regex patterns matching ignored buffer names
          },
          ---A function used to filter the list of selectable windows.
          ---@param winids integer[] # The list of selectable window IDs.
          ---@return integer[] filtered # The filtered list of window IDs.
          filter_func = nil,
        })
      end,
    })
    end
  },
  {
    "danilamihailov/beacon.nvim"
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
    lazy = false
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "stable-code:latest", -- The default model to use.
      host = "localhost", -- The host running the Ollama service.
      port = "11434", -- The port on which the Ollama service is listening.
      quit_map = "q", -- set keymap for close the response window
      retry_map = "<c-r>", -- set keymap to re-send the current prompt
      init = function(options) pcall(io.popen, "ollama serve &") end,
      -- Function to initialize Ollama
      command = function(options)
          local body = {model = options.model, stream = true}
          return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
      end,
      -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
      -- This can also be a command string.
      -- The executed command must return a JSON object with { response, context }
      -- (context property is optional).
      -- list_models = '<omitted lua function>', -- Retrieves a list of model names
      display_mode = "split", -- The display mode. Can be "float" or "split".
      show_prompt = true, -- Shows the prompt submitted to Ollama.
      show_model = true, -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = false, -- Never closes the window automatically.
      debug = false -- Prints errors and the command which is run.
    }
  }
}
--funtions
lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.keys.normal_mode["<S-x>"] = ":q<CR>"
lvim.keys.normal_mode["<C-n>"] = ":tabnew"
lvim.keys.normal_mode["<C-m>"] = ":WinShift<CR>"
lvim.keys.normal_mode["<C-c>"] = ":Gen<CR>"
lvim.keys.visual_mode["<C-c>"] = ":Gen<CR>"
lvim.keys.normal_mode["m"] = "/<CR>"
lvim.keys.normal_mode["M"] = "?<CR>"
lvim.keys.normal_mode["n"] = "e"

lvim.builtin.which_key.mappings["e"] = {
  "<cmd>NvimTreeFocus<CR>", "Explorer"
}
lvim.builtin.which_key.mappings["E"] = {
  "<cmd>NvimTreeToggle<CR>", "Toggle Explorer"
}
if vim.g.neovide == true then
  lvim.builtin.which_key.mappings["+"] = {
    "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", "Scale Neovide Zoom in"
  }
  lvim.builtin.which_key.mappings["-"] = {
    "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", "Scale Neovide Zoom out"
  }
end

--manipulation
lvim.keys.visual_mode["<S-z>"] = '"_d'
lvim.keys.visual_mode["<tab>"] = ">"
lvim.keys.visual_mode["<S-tab>"] = "<"
lvim.keys.normal_mode["<tab>"] = ">>"
lvim.keys.normal_mode["<S-tab>"] = "<<"

--changes
lvim.keys.normal_mode["<C-z>"] = "u"
lvim.keys.normal_mode["<C-y>"] = "<C-r>"
lvim.keys.normal_mode["<C-A-Down>"] = "<C-v><Down>"
lvim.keys.normal_mode["<C-A-Up>"] = "<C-v><Up>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

--Tabs
lvim.keys.normal_mode["<S-h>"] = ":bprev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

-- Nvide
if vim.g.neovide == true then
  vim.g.neovide_scale_factor = 0.8
  vim.o.guifont = "SpaceMono Nerd Font Regular,Space Mono Regular"
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_density = 80.0
end
