let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                 \ 'Modified'  :'M',
                 \ 'Staged'    :'S',
                 \ 'Untracked' :'?',
                 \ 'Renamed'   :'R',
                 \ 'Unmerged'  :'U',
                 \ 'Deleted'   :'D',
                 \ 'Dirty'     :'✗',
                 \ 'Ignored'   :'!',
                 \ 'Clean'     :'✔︎',
                 \ 'Unknown'   :'~',
                 \ }
let NERDTreeShowHidden=1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" refresh nerdtree every time buffer is saved
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

