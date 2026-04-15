[
 "let"
 "print"
 ] @keyword

[
 "if"
 "elif"
 "else"
 ] @keyword.conditional

[
 "while"
 "break"
 "continue"
 ] @keyword.repeat

[
 "info"
 "success"
 "warn"
 "error"
 ] @function

[
 "OS"
 ] @keyword.directive

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

[
 "{"
 "}"
 ] @punctuation.bracket
[
 "("
 ")"
 ] @punctuation.bracket
