return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        layout = {
          layout = { -- the layout itself
            width = 25, -- 0 is max
            height = 0,
          },
        },
        hidden = true,

        ignored = true,
      },
      explorer = {
        hidden = true,
        ignored = true,
      },
    },
  },
}
