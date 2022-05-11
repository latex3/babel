# What's new in babel 3.75

(Development)

## Fixes

* Misplaced line in `diagbox` with RTL and `luatex` (#43)
* Caption names of ‘chapter’ and ‘part’ swapped in zh (#180).

## Language naming with `babel` and the Unicode CLDR

In the coming few weeks (or months), `babel` will attempt to align the
language names with those in the CLDR, although well established
`babel` names that don’t conflict with the latter will be retained
(like `british` or `austrian`). There have already been some moves in
this direction in recent years (for example, `portuguese` instead of
`portuges`, `indonesian` instead of `bahasai`, `malay` instead of
`bahasam`, `french` instead of `frenchb`), but the goal is to recognize
correctly any CLDR-based name.

The number of languages with conflicting names is actually very
reduced: `(n)german`, `swissgernam` and `serbian` are among them. How
to deal with these cases without breaking old documents is under study.

