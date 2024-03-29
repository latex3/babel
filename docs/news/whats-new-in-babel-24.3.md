# What's new in babel 24.3

2024-03-29

There aren’t many changes.

## Fixes

A silly typo in the interchar rules for French spacing:
`puntuation.space` instead of `punctuation.space`.

## Other changes

* Bodo: added a counter named `alphabetic`.
* There is a new setting in `\babeladjust` named `interchar.disable`,
  which is the equivalent in `xetex` to `transforms.disable`, ie, it 
  tells `babel` when the interchar definitions are disabled. It takes
  two values, namely `nohyphenation` and `off`.
* There is a new macro named `\localebox`, related to [issue
  #285](https://github.com/latex3/babel/issues/285) and somewhat
  experimental. Please, refer to the issue for further info. Feel free
  to add comments and suggestions.