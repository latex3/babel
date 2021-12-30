# What's new in babel 3.68

2021-12-28

⚠ There is a severe bug in this version affecting `amsmath` and
`mathtools' (fixed in 3.69).

## (Tentative) fixes in math

Thanks to Salim Bou, who put me on the right track, math labeling
has been greatly improved for `amslatex`, which was (and still is in
some cases) buggy.

Sadly, there are still some rough edges, like `multline` and `cases`,
and very likely a more convoluted solution would be required (maybe at
the lua level).

When this package is not used, the basic environments `equation` and
`eqnarray`, has been fixed, at least with the standard classes.

## Fixes in the language loader

A few locales, among them `hebrew`, where not correctly loaded with
`provide=*`, and there were also some minor issues. The language loader
has been rewritten and hopefully this time it will work correctly (see
[What’s new in babel
3.64](https://latex3.github.io/babel/news/whats-new-in-babel-3.64.html#other-changes)
for a previous attempt).

## Other fixes

* The prehyphenchar for Bengali, Assamese and Gujarati was set to
  empty, but in these languages the hyphen must be shown, so now the
  default character is used.

* Wrong equation direction in first column in array and tabular
environment (#158).










