if exists("did\_load\_filetypes")
    finish
endif

au BufRead,BufNewFile *.pm,*.pl setf perl

" handlebars
au BufRead,BufNewFile *.handlebars,*.hbs setfiletype handlebars

" Markdown
" au! BufRead,BufNewFile *.mkd setfiletype mkd
au BufNewFile,BufRead *.markdown,*.mdown,*.md,*.mkd,*.mkdn,README.md  setf mkd

