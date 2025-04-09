return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify', -- Optional but recommended
  },
  config = function()
    require('noice').setup {
      cmdline = {
        enabled = true,
        view = 'cmdline_popup', -- use a floating popup for commands
      },
      messages = {
        enabled = true,
        view = 'notify', -- use nvim-notify for messages
      },
      popupmenu = {
        enabled = true,
        backend = 'nui', -- use nui for the popupmenu
      },
      lsp = {
        -- override markdown rendering so that cmp and other plugins use Treesitter
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
    }
  end,
}
