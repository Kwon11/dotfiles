return {
  {
    'NeogitOrg/neogit',
    dependencies = { 'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' },
    keys = { { '<leader>g', function() require('neogit').open() end, desc = 'Neogit' } },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufWinEnter', -- primitive/lazy plugin manager. we only load this plugin when we enter buffer
    -- this "event" system is an optimization so nvim doesn't have to load a lot of bloat
    opts = { current_line_blame = true },  -- who last touched this line
  },
}

