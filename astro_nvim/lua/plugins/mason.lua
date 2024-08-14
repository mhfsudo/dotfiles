-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "ansiblels",
        "bashls",
        "dockerls",
        "gopls",
        "groovyls",
        "helm_ls",
        "html",
        "jsonls",
        "rust_analyzer",
        "terraformls",
        "yamlls",
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "beautysh",
        "golines",
        "prettier",
        "stylua",
        "ansible-lint",
        "gitleaks",
        "gitlint",
        "golangci-lint",
        "htmlhint",
        "npm-groovy-lint",
        "pyre",
        "sonarlint-language-server",
        "write-goog",
        "yamllint",
        "yamlfmt",
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        "bash-debug-adapter",
        "go-debug-adapter",
        "java-debug-adapter",
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
