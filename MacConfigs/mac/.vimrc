" Configure Vim
set background=dark
let &t_Co=256
" Set color scheme!¬
colorscheme solarized
if $TERM == "xterm-256color"
  set t_Co=256
endif
" Switch syntax highlighting on
syntax on

" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start

" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
"set backupdir=~/.vim/backups
"set directory=~/.vim/swaps
"if exists("&undodir")
"        set undodir=~/.vim/undo
"endif

set viminfo+=! " make sure vim history works
map <C-J> <C-W>j<C-W>_ " open and maximize the split below
map <C-K> <C-W>k<C-W>_ " open and maximize the split above
set wmh=0 " reduces splits to a single line 

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Auto indent when working
set autoindent
" Make tabs as wide as four spaces
set tabstop=4
" Turn tabs into spaces
set shiftwidth=4
set softtabstop=4
set expandtab
" Enable line numbers
set number
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
"set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Wrap long lines
set wrap
set textwidth=79
set formatoptions=qrn1
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Set color column at 80 characters
set colorcolumn=80
hi ColorColumn ctermbg=Black ctermfg=Red guibg=gray14


set encoding=utf-8

" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Honor markdown file types
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

"" Add tab numbers to vim tabs
""set tabline=%N/\ %t\ %M
""set guitablabel=%N/\ %t\ %M
"function MyTabLine()
"  let s = ''
"  for i in range(tabpagenr('$'))
"    " select the highlighting
"    if i + 1 == tabpagenr()
"      let s .= '%#TabLineSel#'
"    else
"      let s .= '%#TabLine#'
"    endif
"
"    " set the tab page number (for mouse clicks)
"    let s .= '%' . (i + 1) . 'T'
"
"    " the label is made by MyTabLabel()
"    let s .= '%N %{MyTabLabel(' . (i + 1) . ')} %M'
"  endfor
"
"  " after the last tab fill with TabLineFill and reset tab page nr
"  let s .= '%#TabLineFill#%T'
"
"  " right-align the label to close the current tab page
"  if tabpagenr('$') > 1
"    let s .= '%=%#TabLine#%999Xclose'
"  endif
"
"  return s
"endfunction
"
"" Now the MyTabLabel() function is called for each tab page to get its label.
"function MyTabLabel(n)
"  let buflist = tabpagebuflist(a:n)
"  let winnr = tabpagewinnr(a:n)
"  return bufname(buflist[winnr - 1])
"endfunction
":call MyTabLine()
