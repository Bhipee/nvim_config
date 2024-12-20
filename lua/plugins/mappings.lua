return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        i = {
          ["<C-s>"] = { "<cmd>w!<cr>", desc = "Save File" },
          ["<D-s>"] = { "<cmd>w!<cr>", desc = "Save File" },
        },
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<C-s>"] = { "<cmd>w!<cr>", desc = "Save File" },
          ["<D-s>"] = { "<cmd>w!<cr>", desc = "Save File" },
          -- ["<A-Up>"] = {"<cmd>m '>+1<cr>"},
          -- ["<A-Down>"] = {"<cmd>m '>-1<cr>"},
          ["H"] = { "^" },
          ["L"] = { "$" },
          ["J"] = { "5j" },
          ["K"] = { "5k" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },

          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- ["<Leader>b"] = { desc = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          ["<esc>"] = { "<C-\\><C-n>" },
          ["jk"] = { "<C-\\><C-n>" },
          ["<C-H>"] = { "<C-\\><C-n><C-w>h" },
          ["<C-J>"] = { "<C-\\><C-n><C-w>j" },
          ["<C-K>"] = { "<C-\\><C-n><C-w>k" },
          ["<C-L>"] = { "<C-\\><C-n><C-w>l" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          gh = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
