return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
      hidden = true, -- show dotfiles
      no_ignore = false, -- keep respecting .gitignore (set true to ignore that too)
    })

    opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
      hidden = true, -- affects file pickers like Snacks picker
      no_ignore = false,
    })

    return opts
  end,
}
