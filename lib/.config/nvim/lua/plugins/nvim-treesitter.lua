return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "svelte")
      table.insert(opts.ensure_installed, "css")
    end,
  },
}
