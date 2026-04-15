if exists("b:current_syntax")
	finish
endif

" Keywords
syntax keyword arshKeyword let print info success warn error if elif else true false
highlight default link arshKeyword Keyword

" Comments
syntax match arshComment "\/\/.*$"
highlight default link arshComment Comment

" Strings
syntax region arshString start=/"/ end=/"/
highlight default link arshString String

" Numbers
syntax match arshNumber "\<\d\+\(\.\d\+\)\?\>"
highlight default link arshNumber Number

" Operators
syntax match arshOperator "[+\-*/=<>!&|]"
highlight default link arshOperator Operator

" Logical
syntax match arshLogicalOperator "&&\|||\|!"
syntax match arshComparisonOperator "==\|!=\|<=\|>=\|<\|>"
highlight default link arshLogicalOperator Boolean
highlight default link arshComparisonOperator Operator

" Variables
syntax match arshIdentifier "\<[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight default link arshIdentifier Identifier

let b:current_syntax = "arsh"
