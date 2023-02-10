-- local autocmd = vim.api.nvim_create_autocmd

-- -- autocmd BufWritePre *.js Neoformat
-- autocmd("BufWritePre", {
--   command = "silent! lua vim.highlight.on_yank()",
--   group = yankGrp,
-- })

-- Highlight on yank
-- cmd [[
--   let g:neoformat_try_node_exe = 1
--   autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.twig Neoformat
-- ]]
-- local cmd = vim.cmd
-- cmd [[
--   let g:prettier#config#single_quote = 'true'
--   let g:prettier#config#trailing_comma = 'all'
-- ]]

-- local cmd = vim.cmd
-- cmd [[
-- let g:ale_fixers = {
-- \   '*': ['remove_trailing_lines', 'trim_whitespace'],
-- \   'javascript': ['eslint', 'prettier'],
-- \   'html': [ 'prettier'],
-- \}


-- ]]
