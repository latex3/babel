# What's new in babel 26.13

2026-09-27

The manual has been revised to document the latest changes (some of them
were still not included).

## Locales

Two locales have been improved: `chinese-pinyin` (a few missing values)
and `malagasy` (thanks to [Ralahady Bruno Bakys](https://github.com/RalahadyBruno)).

## Fixes

* Make sure glues are not misplaced at end of lines with mixed
  direction (thanks to [Udi Fogiel](https://github.com/Udi-Fogiel)).
* Value in `mapdot=` was ignored.
* Isolate paragraph-like section titles from the rest of the line in the
  bidi algorithm. Requires the `sectioning` option in `layout`.

## Preliminary integration with `unibidi-lua`

This is work in progress, so it should not ne used in production, but
you can make tests. Use the option `bidi=unibidi`. The option
`layout=counters` seems to work.

