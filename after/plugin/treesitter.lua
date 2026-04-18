-- nvim-treesitter v2+ (full rewrite): `nvim-treesitter.configs` no longer exists.
-- Parser installs need the `tree-sitter` CLI (0.26.1+) on PATH; see :h nvim-treesitter-quickstart.

local langs = {
  'javascript',
  'typescript',
  'php',
  'c',
  'lua',
  'vim',
  'vimdoc',
  'query',
  'go',
  'java',
  'ruby',
}

require('nvim-treesitter').install(langs)

vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
