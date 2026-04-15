[
 "let"
 "print"
 "info"
 "success"
 "warn"
 "error"
 "if"
 "elif"
 "else"
 ] @keyword

[
 "true"
 "false"
 ] @boolean

(comment) @comment
(string) @string
(number) @number
(identifier) @variable

[
 "+"
 "-"
 "*"
 "/"
 "="
 ] @operator

[
 "=="
 "!="
 "<"
 "<="
 ">"
 ">="
 ] @operator

[
 "&&"
 "||"
 "!"
 ] @keyword.operator
