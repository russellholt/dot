syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set modeline
set autoindent
set showcmd
set ruler
set backspace=indent,eol,start
set nowrap
set nojoinspaces

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set vb t_vb=

call pathogen#infect()

runtime ftplugin/man.vim


filetype indent on
filetype plugin on
" map \p i(<Esc>ea)<Esc>
" map \[ i[<Esc>ea]<Esc>
" map \" i"<Esc>ea"<Esc>
" map \' i'<Esc>ea'<Esc>
" map \{ i{<Esc>ea}<Esc>
map \m <Esc>:%! tr '\r' '\n'<Return>
set number

" underline with single dash
map \u <Esc>Ypv$r-
map \U <Esc>Ypv$r=

noremap <Up> gk
noremap <Down> gj


let b:nroff_is_groff = 1

let g:do_xhtml_mappings = 'true'
let g:html_tag_case = 'lowercase'
let g:no_html_tab_mapping = 1
let g:html_template = "~/.vim/templates/htmltemplate.html"
let g:no_html_toolbar = 'yes'

if has ("gui_running")
	set background=dark
	colorscheme russell
	set transparency=2
    set guifont=Anonymous\ Pro:h12
    set antialias
    set guioptions-=T
else
    set mouse=a
    set ttymouse=xterm2
    set t_Co=256
	set background=dark
    colorscheme desert256
endif

augroup md
    autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

" ShowFuncs
let g:showfuncctagsbin = "/usr/local/bin/ctags"

let g:ConqueTerm_Color = 1


let mapleader = ","
runtime macros/matchit.vim


let g:jsbeautify = {"indent_size":4, "indent_char": " "}
let g:jsbeautify_engin = "node"

map \f :call JsBeautify()<cr>
map \t :!tidy -wrap 160 -q<cr>
map \g :NERDTree<cr>
map \r :%s/\r/\r/g<cr>

" swap _ separated words, like template_small -> small_template
let @e='i_/_xdebPb'

let g:openbrowser_default_search = 'duckduckgo'
map \s <Plug>(openbrowser-search)

let g:vim_markdown_folding_disabled = 'true'

set sessionoptions+=tabpages,globals


let g:airline_powerline_fonts = 0

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

