return {
  'nvimtools/none-ls.nvim',

  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gdformat,
        null_ls.builtins.formatting.csharpier,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.rustywind,
        null_ls.builtins.formatting.ruff,
        -- null_ls.builtins.formatting.mypy,
      },
    }
  end,
}
