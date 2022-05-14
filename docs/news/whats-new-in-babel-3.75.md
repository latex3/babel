# What's new in babel 3.75

(Development)

## Ensuring locale info

As the LaTeX kernel extends its capabilities related to localization
(like upper and lower casing), BCP47 tags are becoming
essential. The required information is stored in the `ini` locale
files, which are loaded by `babel` itself. In other words,
`\BabelEnsureInfo` is executed always. This means there will be a
minimal overhead. This should work for most languages, but see the
following section.

## Language naming with `babel` and the Unicode CLDR

In the coming few weeks (or months), `babel` will attempt to align the
language names with those in the CLDR, although well established
`babel` names that don’t conflict with the latter will be retained
(like `british`, `norsk` or `austrian`). There have already been some
moves in this direction in recent years (for example, `portuguese`
instead of `portuges`, `indonesian` instead of `bahasai`, `malay`
instead of `bahasam`, `french` instead of `frenchb`), but the goal is
to recognize correctly any CLDR-based name.

The number of languages with conflicting names is actually very
reduced: `(n)german`, `swissgerman` and `serbian` are among them. How
to deal with these cases without breaking old documents is under study.

## Fixes

* Misplaced line in `diagbox` with RTL and `luatex` (#43)
* Caption names of ‘chapter’ and ‘part’ swapped in the `ini` files for
  Traditional Chinese (#180).
* Captions are now placed after numbers in the `ini` file for Lithuanian.

## Script ranges

The Unicode character ranges were hard-coded in the `babel` kernel, but
now they can be set or modified in the `ini` with the key `ranges` in
the `characters` section (as well as in `\babelprovide`). A few
Southeast Asian defined this key for the line breaking algorithm, but
this new feature can be useful with `onchar` and with locales declared
from scratch. 

Note you cannot define different blocks for different languages sharing
the script. If there are multiple declarations, the last one wins.




