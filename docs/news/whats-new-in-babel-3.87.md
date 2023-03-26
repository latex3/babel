# What's new in babel 3.87

**Draft**

## `hyphenrules`

Now changes made with `hyphenrules=` in `\babelprovide` are immediately
applied if the modified locale is the current one. Formerly, they where
just set (not applied), but the new behavior seems to be the expected
one. It’s a backwards incompatible change, but I don’t think this will
pose too many problems.

## Fixes

* Text misplaced with tikz. Fixed thanks to Salim Bou (#211).

* When a unhyphenated language (with `prehyphenchar` set to 0) was loaded
on the fly, there was a language leakage, so that `\foreinglanguage{..}{..}`
didn’t restore the surrounding language.

* With the `multicol` package and RTL text, the page body was sometimes
shifted off the page (#228).

* Typo in the `syllable` counter name in Korean (it read mistakenly
`syllabe`).

* There is a minor change in the way transforms deal with added
discretionaries (technically, they are now of subtype `regular` instead
of `discretionary`). The new value makes more sense and the result
should be the same im most cases, except in some edge cases, where the
hyphenation point will be better chosen.
