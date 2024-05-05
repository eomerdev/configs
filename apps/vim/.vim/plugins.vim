" Vim plugins
" Author: eomerdev <eomerdev@gmail.com>

call plug#begin('~/.vim/plugged')

"Start screen
Plug 'mhinz/vim-startify'

"Theme
Plug 'morhetz/gruvbox'
"Plug 'tribela/vim-transparent'

"Tmux interaction
Plug 'preservim/vimux' 
Plug 'christoomey/vim-tmux-navigator'

" Filetree navigation
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Status bar
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/loremipsum'

call plug#end()

let g:gruvbox_contrast_dark="hard"

let g_gruvbox_italic=1

let g:lightline = {
                  \ 'colorscheme': 'gruvbox',
                  \ 'active': {
                        \   'left': [ [ 'mode', 'paste' ],
                        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                        \ },
                        \ 'component_function': {
                              \   'gitbranch': 'gitbranch#name'
                              \ },
                              \ }

let g:tmux_navigator_no_mappings = 1

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
                  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
                  \ 'javascript.jsx': 'jsxRegion',
                  \ 'typescriptreact': 'jsxRegion,tsxRegion',
                  \ 'javascriptreact': 'jsxRegion',
                  \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Transparent style
" default
"let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            "\ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            "\ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            "\ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

"" Pmenu
"let g:transparent_groups += ['Pmenu']

"" coc.nvim
""let g:transparent_groups += ['NormalFloat', 'CocFloating']

"augroup transparent
    "autocmd VimEnter,ColorScheme * call MyTransparent()
"augroup END

"function! MyTransparent()
    "" Customize the highlight groups for transparency in here.

    "" CursorLine
    "hi CursorLine ctermfg=NONE ctermbg=239 guibg=NONE guibg=#4e4e4e

    "" coc.nvim
    "hi CocMenuSel ctermbg=239 guibg=#4e4e4e
"endfunction

" NERDTree configuration

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" nerdtree-git-plugin configuration

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
