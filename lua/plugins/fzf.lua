return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    -- Refer: https://github.com/ibhagwan/fzf-lua/blob/main/lua/fzf-lua/defaults.lua
    local file_win_opts = {
      fullscreen = true,
      preview = {
        layout = "vertical",
        vertical = "up:70%",
      },
    }
    config.defaults.actions.files["ctrl-t"] = require("fzf-lua.actions").file_tabedit
    config.defaults.keymap.builtin["<a-f>"] = "toggle-fullscreen"
    config.defaults.keymap.builtin["<c-w>"] = "toggle-preview-wrap"
    config.defaults.keymap.builtin["<c-p>"] = "toggle-preview"
    config.defaults.keymap.builtin["<c-u>"] = "unix-line-discard"
    return {
      files = { winopts = file_win_opts },
      oldfiles = { winopts = file_win_opts },
      git = {
        files = {
          winopts = file_win_opts,
        },
      },
    }
  end,
}
