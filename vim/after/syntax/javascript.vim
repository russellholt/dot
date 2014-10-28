"syn match	shComment		"^\s*\zs#.*$"	contains=@shCommentGroup
"syn match	shComment		"\s\zs#.*$"	contains=@shCommentGroup
syn match	Keyword 	"#.*$"
set foldmethod=marker
syn keyword javaScriptCommentTodo      DEBUG contained
