# What's new in babel 24.7

**Draft**

There is a minimal internal change in the lua algorithm for bidi,
just a few lines of code, to improve how it’s applied in horizontal
boxes. See issue #25.

## New hook foreign

Actually it’s not new, but it wasn’d documented because the interface
was not finished. Now it’s and you can define actions to be executed at
`\begindocument` and also manipulate the string with a new command
`\BabelWrapText`.

Here is an example:
```
\AddBabelHook[danish]{one}{foreign}{\BabelWrapText{[##1]}}
\AddBabelHook[danish]{two}{foreign}{\BabelWrapText{(##1)}}
```
`##1` is the string, ie, the second mandatory argument in
`\foreignlanguage`, and it's first wrapped with `[]`, and the result is
in turn wrapped with `()`, so that we get `([...])` (where `...` is the
string).

Without the optional argument, it’s applied to all languages

There is an internal macro named `\BabelText`, which can by used de
define directly what to do with the string. It can be useful in some
cases, but the best option is to stick to `\BabelWrapText`. 
 
  
 
