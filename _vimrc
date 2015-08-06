:set background=light
:let &t_Co=256
:colorscheme torte

:set backspace=indent,eol,start

:syntax on

if $TERM == "xterm-256color"
  set t_Co=256
endif

" Turn tabs into spaces
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab

:set number     
:set ruler      
":set cursorline 
                    
:set encoding=utf-8
:set autoindent 

" always wrap long lines
:set wrap                                              
:set textwidth=99                                      
:set formatoptions=qrn1                                
:set colorcolumn=100                                    
:hi ColorColumn ctermbg=Black ctermfg=Red guibg=gray14 
