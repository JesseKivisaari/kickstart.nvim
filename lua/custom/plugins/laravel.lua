return {
  {
    'adalessa/laravel.nvim',
    cmd = { 'Sail', 'Artisan', 'Composer', 'Npm', 'Yarn', 'Laravel' },
    dependencies = {
      'tpope/vim-dotenv',
      'MunifTanjim/nui.nvim',
      'kevinhwang91/promise-async',
    },
    keys = {
      { '<leader>la', ':Laravel artisan<cr>', desc = 'Artisan' },
      { '<leader>lr', ':Laravel routes<cr>', desc = 'Routes' },
      { '<leader>lc', ':Composer<cr>', desc = 'Composer' },
      { '<leader>ln', ':Npm<cr>', desc = 'Npm' },
      { '<leader>ly', ':Yarn<cr>', desc = 'Yarn' },
    },
    event = { 'VeryLazy' },
    opts = function(_, opts)
      local has = function(plugin)
        return require('lazy.core.config').plugins[plugin] ~= nil
      end

      opts.lsp_server = 'intelephense'
      opts.features = {
        pickers = {
          enable = true,
          provider = (has 'telescope.nvim' and 'telescope') or (has 'fzf-lua' and 'fzf-lua') or (has 'snacks.nvim' and 'snacks') or 'ui.select',
        },
      }
    end,
  },
  {
    'Bleksak/laravel-ide-helper.nvim',
    keys = {
      {
        '<leader>lim',
        function()
          require('laravel-ide-helper').generate_models(vim.fn.expand '%')
        end,
        desc = 'Generate Model Info (Current)',
      },
      {
        '<leader>liM',
        function()
          require('laravel-ide-helper').generate_models()
        end,
        desc = 'Generate Model Info (All)',
      },
    },
    dependencies = {},
  },
  {
    'ricardoramirezr/blade-nav.nvim',
    ft = { 'blade', 'php' },
    dependencies = {
      { 'hrsh7th/nvim-cmp', optional = true },
    },
  },
}
