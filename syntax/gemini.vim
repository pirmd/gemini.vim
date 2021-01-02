" Vim syntax file
" Language:     text/gemini
" Maintainer:   ΠRMD <pirmd@users.noreply.github.com>
" Filenames:    *.gemini
" Last Change:  2021-01-02

if exists("b:current_syntax")
    finish
endif

syn match geminiHeader /^#\{1,3}[^#].*$/

syn match geminiLinkStart /^=>/ nextgroup=geminiLinkUrl skipwhite
syn match geminiLinkUrl   /\S\+/ contained nextgroup=geminiLinkTitle skipwhite
syn match geminiLinkTitle /.*$/ contained

syn match geminiBlockQuote /^>.*/

syn match geminiListItem /^\* .*$/

syn region geminiPreformatedBlock start=/^```/ end=/^```/

hi def link geminiHeader           Title
hi def link geminiLinkStart        Todo
hi def link geminiLinkUrl          Underlined
hi def link geminiLinkTitle        Comment
hi def link geminiBlockQuote       Special
hi def link geminiListItem         Identifier
hi def link geminiPreformatedBlock Statement

let b:current_syntax = "gemini"
