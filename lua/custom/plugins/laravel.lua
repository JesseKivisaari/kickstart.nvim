return {
  'adalessa/laravel.nvim',
  dependencies = {
    'tpope/vim-dotenv',
    'MunifTanjim/nui.nvim',
    'kevinhwang91/promise-async',
  },
  cmd = { 'Laravel' },
  keys = {
    { '<leader>la', ':Laravel artisan<cr>' },
    { '<leader>lr', ':Laravel routes<cr>' },
    { '<leader>lm', ':Laravel related<cr>' },
  },
  event = { 'VeryLazy' },
  opts = {
    lsp_server = 'intelephense',
    features = {
      pickers = {
        enable = true,
        provider = 'snacks',
      },
    },
  },
  config = true,
}
