-- vim.cmd('au BufRead,BufNewFile *.njk set filetype=hmldjango')
-- vim.cmd('au BufRead,BufNewFile *.njk set filetype=html')
-- vim.cmd('autocmd FileType html,htmldjango,css,scss EmmetInstall')
-- vim.cmd('au bufread,bufnewfile *.sass,*.scss set filetype=sass')
vim.cmd('au BufRead,BufNewFile *.njk set filetype=htmldjango')
-- " make indentation based on filetype
vim.cmd [[filetype plugin indent on]]
