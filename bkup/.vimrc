" Using https://github.com/junegunn/vim-plug plugin manager
call plug#begin('~/.vim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-scripts/bats.vim'
Plug 'morhetz/gruvbox'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tomasr/molokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'fcpg/vim-osc52'
Plug 'tpope/vim-commentary'
" Initialize plugin system
call plug#end()

"enable syntax
syntax enable

"set modifiable on for buffer
set modifiable

" Search & display
set formatoptions-=cro "stop putting comments on new lines
set ignorecase
set incsearch "highlight the first matching pattern
set nohls "don't highligh all pattern matches
"set number
set showmatch "When a bracket is inserted, briefly jump to the matching one.
set smartcase "Override the 'ignorecase' option if the search pattern contains upper case characters.  Only used when the search pattern is typed and 'ignorecase' option is on.  Used for the commands /, ?, n, N, :g and :s

"set relativenumber
set nu rnu

"set backspace
set backspace=indent,eol,start

" set color scheme
"colorscheme Tomorrow-Night-Bright
colorscheme gruvbox

" Enable vim: ... directives
set modeline

" Tab stuff
" tabstop is effectively how many columns of whitespace a \t is worth.
" shiftwidth is how many columns of whitespace a “level of indentation” is worth.
" Setting expandtab means that you never wanna see a \t again in your file
" softtabstop is how many columns of whitespace a tab keypress or a backspace keypress is worth.
set tabstop=8
set softtabstop=4
set shiftwidth=4

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Make no noise
" Use a visual bell instead of beeping.  The terminal code to display the visual bell is given with 't_vb'.  When no beep or flash is wanted, use:set vb t_vb=
set visualbell t_vb= 
"Ring the bell (beep or screen flash) for error messages.  This only makes a difference for error messages, the bell will be used always for a lot of errors without a message (e.g., hitting <Esc> in Normal mode).
set noerrorbells

" Vertical diff
set diffopt=filler,vertical

" Use hidden (allow buffer switch when modified)
au BufNewFile,BufRead * set hidden

" Abbreviations
abb _3me_ Sharad Mishra <sharad.be@gmail.com>
abb _date_ <C-R>=strftime("%Y-%m-%d")<CR>
abb _sm_ Sharad Mishra
abb _sh_ #!/bin/bash
abb _m# #########################################################################################
abb _# ##########################################


" Ale
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '❗'
let g:ale_linters = {
\   'python': ['flake8'],
\}

" Airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
"let g:airline_theme = 'minimalist'
let g:airline_theme = 'dark'
"let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"remap keys for personal preference
nnoremap JJ <c-d>
nnoremap KK <c-u>
nnoremap ff :Files<CR>
nnoremap bf :Buffers<CR>
nnoremap FF <c-f>
nnoremap BB <c-b>
nnoremap nb :bnext<CR>
nnoremap pb :bprevious<CR>
nnoremap <tab> :bnext<CR>
nnoremap <S-tab> :bprevious<CR>
nnoremap Y y$
nnoremap ; :
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <c-l> <c-x><c-l>
inoremap <c-f> <c-x><c-f>
inoremap <c-d> <Esc>diwa
inoremap <c-u> <Esc>ua

"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
if has("gui_running")
    " No toolbar or menu
    set guioptions=aAce
    colorscheme gruvbox
    set guifont=Roboto\ Mono\ 18
endif

map <F1> :colorscheme gruvbox<cr>
map <F2> :colorscheme morning<cr>
map <F3> :colorscheme Tomorrow-Night<cr>
map <F4> :colorscheme Tomorrow-Night-Eighties<cr>
map <F5> :colorscheme Tomorrow<cr>
map <F6> :colorscheme Tomorrow-Night-Bright<cr>
map <F7> :colorscheme delek<cr>
map <F8> :colorscheme molokai<cr>
map <F9> :colorscheme atom-dark-256<cr>

let g:gruvbox_invert_selection = 0

" settings for coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

nmap <space>e :CocCommand explorer<CR>

"########################################## terminal mode ##########################################
tnoremap <Esc> <C-\><C-n>
cnoremap hterm :split term://zsh

cnoremap vterm :vsplit term://zsh
vmap <C-c> y:call SendViaOSC52(getreg('"'))<cr>
