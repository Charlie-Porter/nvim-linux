return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      api_key_cmd = "pass show api-token/openai",
      openai_params = {
        model = "gpt-5.1",
        top_p = 0.1,
        n = 1,
      },
    },
     config = function (_, opts)
        require("chatgpt").setup(opts)
        require("chatgpt.config").options.openai_params.max_tokens = nil
        require("chatgpt.config").options.openai_params.temperature = nil
      end,
  },
}
