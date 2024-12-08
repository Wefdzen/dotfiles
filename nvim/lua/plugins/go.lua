return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              staticcheck = true,
            },
          },
        },
      },
      setup = {
        gopls = function(_, opts)
          -- Автокоманда для организации импортов при сохранении
          vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.go",
            callback = function()
              vim.lsp.buf.code_action({
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {}, -- Добавляем пустой список диагностик
                },
                apply = true,
              })
            end,
          })
        end,
      },
    },
  },
}
