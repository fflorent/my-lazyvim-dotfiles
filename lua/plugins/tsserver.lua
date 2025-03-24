return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          root_dir = require('lspconfig').util.find_git_ancestor,
          init_options = {
            preferences = {
              importModuleSpecifierPreference = "non-relative",
            }
          }
        },
        vtsls = {
          settings = {
            javascript = {
              preferences = {
                importModuleSpecifier = "non-relative",
              },
            },
            typescript = {
              preferences = {
                importModuleSpecifier = "non-relative",
              },
            },
          },
        },
      }
    }
  }
}
