" Vim syntax file
" Language:     text/gemini
" Maintainer:   ΠRMD <pirmd@users.noreply.github.com>
" Filenames:    *.gemini, *.gmi
" Last Change:  2021-01-03

if exists("b:current_syntax")
    finish
endif

"
" ---+ Syntax definition -------------------------------------------------------
syn region geminiHeader matchgroup=geminiHeaderMarker start=/^#\{1,3}[^#]/ end=/$/ oneline

syn match geminiLinkMarker /^=>/ nextgroup=geminiLinkURL skipwhite
syn match geminiLinkURL    /\S\+/ contains=@NoSpell contained nextgroup=geminiLinkTitle skipwhite
syn match geminiLinkTitle  /.*$/ contained

syn region geminiPreformatted matchgroup=geminiPreformattedDelimiter start=/^```/ end=/^```/ contains=@NoSpell
"TODO: add geminiPreformattedAlt

syn region geminiBlock matchgroup=geminiQuoteMarker start=/^>/ end=/$/ oneline

syn match geminiListItemMarker /^\*/ display


"
" ---+ Highlight definition ----------------------------------------------------
hi def link geminiHeader           Title
hi def link geminiHeaderMarker     Identifier

hi def link geminiLinkTitle        String
hi def link geminiLinkURL          Underlined
hi def link geminiLinkMarker       Identifier

hi def link geminiPreformatted             String
hi def link geminiPreformattedDelimiter    Delimiter

hi def link geminiQuote            Comment
hi def link geminiQuoteMarker      Identifier

hi def link geminiListItemMarker   Identifier

"
" ---+ We're done --------------------------------------------------------------
let b:current_syntax = "gemini"
