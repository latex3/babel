# What's new in babel 24.8

2024-08-18

There is a minimal internal change in the lua algorithm for bidi,
just a few lines of code, to improve how it’s applied in horizontal
boxes. See [issue #25](https://github.com/latex3/babel/issues/25).

## New hook `foreign`

Actually it’s not new, but it wasn’t documented because its interface
was not finished. Now it is and you can define actions to be executed at
`\foreignlanguage`, as well as manipulate the string with a new command
`\BabelWrapText`.

Here is an example:
```tex
\AddBabelHook[danish]{one}{foreign}{\BabelWrapText{[##1]}}
\AddBabelHook[danish]{two}{foreign}{\BabelWrapText{(##1)}}
```
`##1` is the string, ie, the second mandatory argument in
`\foreignlanguage`, and it's first wrapped with `[]`; the result in
turn is used to wrap the second declaration, with `()` , so that we get
`[(...)]` (where `...` is the string). In other words, the last
definition is the innermost one, and therefore here `##1` is the
original string (something you have to bear in mind if tokens have to
be parsed somehow).

Without the optional argument, it’s applied to all languages.

There is an internal macro named `\BabelText`, which can by used to
define directly what to do with the string (eg, with `\def`). It can be
useful in some cases, but the best option is to stick to
`\BabelWrapText`.

## Improvements in locales

Some cleaning up in a few locales, thanks to [Stephen Huan](https://github.com/stephen-huan).
 
  
 
