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
	colorscheme twilight256
	set transparency=2
    set guifont=Anonymous\ Pro:h11
    set antialias
    set guioptions-=T
else
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
let @e='i_/_xdebP'

let g:openbrowser_default_search = 'duckduckgo'
map \s <Plug>(openbrowser-search)

let g:vim_markdown_folding_disabled = 'true'

