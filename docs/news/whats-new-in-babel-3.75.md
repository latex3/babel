# What's new in babel 3.75

(Development)

## Ensuring locale info

As the LaTeX kernel extends its capabilities related to localization
(like upper and lower casing), BCP47 tags are becoming
essential. The required information is stored in the `ini` locale
files, which were load loaded only in some cases, except with
`\EnsureBabelInfo`. Now it’s loaded always. This means there will be a
minimal overhead. This should work for most languages, but see the
following section.

Because of the way this feature works, problems are very unlikely, but
there is switch as a package option to turn the new behavior off
(`ensureinfo=off`).

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

## `\localeinfo*`

Sometimes, it comes in handy to be able to use `\localeinfo` in an
expandable way even if something went wrong (for example, the locale
currently active is undefined). For these cases, `localeinfo*` just
returns an empty string instead of raising an error. Bear in mind that
`babel`, following the CLDR, may leave the region unset, which means
`\getlanguageproperty*` (see the manual) is the preferred command, so
that the existence of a field can be checked before. This also means
building a string with the language and the region with
`\localeinfo*{language.tab.bcp47}-\localeinfo*{region.tab.bcp47}` is
not usually a good idea (because of the hyphen).

## Fixes

* Misplaced line in `diagbox` with RTL and `luatex` (#43)
* Caption names of ‘chapter’ and ‘part’ swapped in the `ini` files for
  Traditional Chinese (#180).
* Captions are now placed after numbers in the `ini` file for Lithuanian.
* The `hyphenrules` in `en-AU` and `en-NZ` were set to `english`
  instead of `ukenglish`.

## Script ranges

The Unicode character ranges were hard-coded in the `babel` kernel, but
now they can be set or modified in the `ini` with the key `ranges` in
the `characters` section (as well as in `\babelprovide`). A few
Southeast Asian languages defined this key for the line breaking
algorithm, but this new feature can be useful with `onchar` and with
locales declared from scratch.

Note you cannot define different blocks for different languages sharing
the script. If there are multiple declarations, the last one wins.




