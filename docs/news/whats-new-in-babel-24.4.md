# What's new in babel 24.4

2024-04-20

## New ‘interchar’ for CJK

There is a new `interchar` available in Cantonese, Chinese, Japanese
and Korean named `linebreak.basic`. By default (plain) `xetex` loads a
set of settings for the CJK scripts, but not `xelatex`. What this
option does is to load them. There are a couple of macros to set the
glue and the space inserted between characters when appropriate:
* `\BabelCJKGlue` (by default `\hskip0pt plus 0.1em\relax`)
* `\BabelCJKSpace` (by default `\hskip0.2em plus 0.2em minus 0.1em\relax`)

While this ‘interchar’ is locale dependent (and it can be enabled and
disabled with `\enablelocaleinterchar` and `\disablelocaleinterchar`),
these two macros are shared by the CJK languages. However, you can set
different values on a locale basis by means of the standard `babel`
mechanisms (`\extras...` or `\AddBabelHook`).

## Fixes

The algorithm for Tibetan line breaking has been improved to take into
account closing punctuation.

## Other changes

`\IfBabelIntercharT` is not executed directly, but delayed to a better
place.