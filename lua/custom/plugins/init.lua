-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvimtools/none-ls.nvim',
    dependencies = {
      'nvimtools/none-ls-extras.nvim',
      'jayp0521/mason-null-ls.nvim',
    },

    config = function()
      require('mason-null-ls').setup {
        ensure_installed = {
          'ruff',
          'prettier',
          'shfmt',
        },
        automatic_installation = true,
      }
    end,
  },

  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'tinymist',
      },
    },
  },
}
