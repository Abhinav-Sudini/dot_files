return {
  "Pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    execution_message = {
      message = function() -- message to print on save
        return ""
      end,
    },
    trigger_events = {
      "InsertLeave",
      "TextChanged",
    },
    debounce_delay = 250,
    write_all_buffers = false,
  },
}
