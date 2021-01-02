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

syn region geminiBlockQuote matchgroup=geminiBlockQuoteMarker start=/^>/ end=/$/

syn match geminiListItemMarker /^\*/

syn region geminiCode matchgroup=geminiCodeDelimiter start=/^```/ end=/^```/

hi def link geminiHeader           Title
hi def link geminiLinkStart        Todo
hi def link geminiLinkUrl          Underlined
hi def link geminiLinkTitle        Comment
hi def link geminiBlockQuote       Special
hi def link geminiBlockQuoteMarker Identifier
hi def link geminiListItemMarker   Identifier
hi def link geminiCodeDelimiter    Delimiter
hi def link geminiCode             Statement

let b:current_syntax = "gemini"
