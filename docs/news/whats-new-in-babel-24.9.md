# What's new in babel 24.9

**Draft**

## Counters

(LuaLaTeX.) Now localized counters are also available as transforms,
with name `digits.native`. It an alternative to `mapdigits`, which the
advantage it can be enabled and disabled in the middle of the
paragraph.

## CJK spacing and line breaking

**Liable to change.** (LuaLaTeX).

A few transforms adjust the spacing to follow some common conventions
in Chinese and Japanese.

`linebreak.strict` (Japanese) prevents line breaks before small kana
variants.

`spacing.trim.pairs` reduces the space between some characters (eg,
`）。`), by inserting a negative kern of −.5 em.

`spacing.trim.edges` trims some characters at the start and end of the
line, for they to get visually aligned with the margin.

[The spacing transforms will be merged somehow. They are currently
separated for testing purposes.]

As its name implies, this feature trims the characters with the help a
kern to reduce the spacing. (An alternative approach based on the
`halt` OpenType table is on the way).


