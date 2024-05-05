" Vim keymaps
" Author: eomerdev <eomerdev@gmail.com>

let mapleader=" "

nmap <Leader>te :term<CR>

"nmap <Leader>tr :NERDTreeFind<CR>
nnoremap <leader>tr :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <Leader>vl :VimuxRunLastCommand<CR>

nmap <Leader>li :Loremipsum 50<CR>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

nmap <silent> dsa ds}dF\
