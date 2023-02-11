vim.cmd [[

" Fix files with prettier, and then ESLint.
" let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
" let b:ale_fixers = {'javascript': ['prettier', 'eslint']}


 "let g:ale_completion_enabled = 1
  let g:ale_fix_on_save = 1
  let g:ale_fixers = {
                    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
                    \ 'html': ['prettier'],
                    \ 'javascript': ['eslint', 'prettier'],
                    \ 'css' : ['stylelint', 'prettier'],
                    \ 'scss' : ['stylelint', 'prettier'],
                    \ }
  let g:syntastic_ignore_files = ['.njk']
]]
