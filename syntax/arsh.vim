if exists("b:current_syntax")
	finish
endif

" Directives
syntax keyword arshDirective OS
highlight default link arshDirective PrePro

" Keywords
syntax keyword arshKeyword let print
highlight default link arshKeyword Keyword

" Conditionals
syntax keyword arshConditional if elif else
highlight default link arshConditional Conditional

" Loops
syntax keyword arshRepeat while break continue
highlight default link arshRepeat Repeat

" Logging
syntax keyword arshLogFunc info success warn error
highlight default link arshLogFunc Function

" Booleans
syntax keyword arshBoolean true false
highlight default link arshBoolean Boolean

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
highlight default link arshComparisonOperator Operator

syntax match arshComparisonOperator "==\|!=\|<=\|>=\|<\|>"
highlight default link arshLogicalOperator Boolean


" Braces and Parens
syntax match arshBrace "[{}]"
syntax match arshParen "[()]"
highlight default link arshBrace Delimiter
highlight default link arshParen Delimiter

" Variables
syntax match arshIdentifier "\<[a-zA-Z_][a-zA-Z0-9_]*\>"
highlight default link arshIdentifier Identifier

let b:current_syntax = "arsh"
