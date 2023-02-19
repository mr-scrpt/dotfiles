vim.cmd[[
augroup MyGroup | au!
autocmd FileType htmldjango setlocal commentstring={#\ %s\ #}
augroup END
]]
