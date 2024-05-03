return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          root_dir = require('lspconfig').util.find_git_ancestor
        }
      }
    }
  }
}
