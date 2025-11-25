-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },

  config = function()
    -- try to load plugin; if not present, just bail out
    local ok_install, install = pcall(require, "nvim-treesitter.install")
    if not ok_install then
      return
    end

    -- avoid GLIBC issues: compile from source
    install.prefer_git = true
    install.compilers = { "gcc", "clang" }
    install.parser_install_dir = vim.fn.stdpath("data") .. "/treesitter"

    local ok_configs, configs = pcall(require, "nvim-treesitter.configs")
    if not ok_configs then
      return
    end

    configs.setup({
      ensure_installed = {
        -- basics
        "lua",
        "vim",
        "vimdoc",
        "regex",
        "bash",
        "markdown",
        "markdown_inline",

        -- web / TS
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "json",
        "jsonc",

        -- misc
        "toml",
        "yaml",
        "dockerfile",
      },

      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}



