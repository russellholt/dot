" Vim syntax file
" Language:	pw (http://russellholt.com/)
" Maintainer:	Russell Holt <rsl@russellholt.com>
" URL:		http://russellholt.com/pw.html
" Version:	1
" Last Change:  2011 Mar 31


if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
"syn sync fromstart
syn sync linebreaks=2

syn match pwTitle       /^\s*[0-9]\+\..*$/
syn match pwLineTitle   /^\s*\w\(\w\|\s\|[',"\-]\)\+:$/
syn match pwItemName    /^\s*\w\(\w\|\s\|[',"\-]\)\+:\s/
syn match pwUrl         /http:\/\/.\+\//
"syn match pwCode        /^\s\+[^\-].*$/
syn match pwCmdLine     /^\s*%\s\?.*$/
syn match pwListItem0   /^[-+•].*$/
syn match pwListItem    /^\s\+\([-+•]\)\?.*$/
syn region pwQuoted     start=+"+    end=+"+   skip=+\\"+
syn region pwParen      start=+(+    end=+)+   skip=+\\)+
syn region pwBlock      start=/{/    end=/}/   contains=ALL transparent fold
syn region pwBComment   start=+/\*+    end=+\*/+   contains=ALL
syn match pwComment     /#.*$/
syn match pwQuoteLine   /^\s*>.*$/
syn match pwTitleBig    /^.\+\n=\+$/
syn match pwTitleMed    /^.\+\n-\+$/
syn match pwIdea        /^\s*idea\s*/
syn match pwStartTag    /<\w*>/
syn match pwEndTag      /<\/\w*>/
syn match pwBold        /\s_\w\+_\s/
"syn match pwEmail       /\w\+\.?\w\+@(\w\+\.(\w\+))(\.(\w\+))*/

hi def link pwItemName Identifier
hi def link pwStartTag Identifier
hi def link pwEndTag Identifier
hi def link pwBComment Comment
hi def link pwCode Comment
hi def link pwComment Comment
hi def link pwQuoteLine Comment
hi def link pwIndented Comment
hi def link pwQuoted String
hi def link pwCmdLine String
hi def link pwParen Comment
hi def link pwListItem Statement
hi def link pwListItem0 Statement
hi def link pwNumber Number
hi def link pwTitle Keyword
hi def link pwLineTitle Title
hi def link pwTitleBig Title
hi def link pwTitleMed Constant
hi def link pwUrl PreProc
hi def link pwIdea PreProc
hi def link pwEmail String
hi def link pwBold Conditional

"setlocal nonumber

let b:current_syntax = "pw"
" vim: ts=8
