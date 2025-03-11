return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
  dependencies_bin = { ['tinymist'] = 'tinymist' },
  config = function()
    -- vim.keymap.set('', '<Tab>', ':bnext<CR>', { desc = 'Next Buffer' })
    vim.keymap.set('n', '<leader>dp', ':TypstPreviewToggle<CR>', { desc = 'Open typst preview' }) -- close buffer
  end,
}
