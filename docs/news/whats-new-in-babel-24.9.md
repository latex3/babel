# What's new in babel 24.9

2024-08-29

## Counters

(LuaLaTeX.) Now localized counters are also available as transforms,
with name `digits.native`. It’s an alternative to `mapdigits`, which the
advantage it can be enabled and disabled in the middle of the
paragraph.

## CJK spacing and line breaking

A couple of tentative transforms apply rules to follow some common
conventions in Chinese and Japanese (currently only locales `jp` and
`zh`).

* `linebreak.strict` (only Japanese) prevents line breaks before small kana
variants.

* `spacing.basic` trims some characters at the start and end of the
  line, for they to get visually aligned to the margin, and reduces the
  space between some characters (eg, `）。`), by inserting a negative
  kern of −.5 em.
  
Note currently `spacing.basic` assumes punctuation marks (comma, colon,
period, etc.) are visually aligned in the font to the left inside the
character block (eg, Noto JP and SC). Centered punctuation (eg, Noto TC
and HK) will be addressed in a future release (including middle dot).

Also, although it is barely noticeable, the tiny spaces inserted for
justification are missing in these transforms. This limitation will be fixed in the next
releases and a way to configure the values of kerns and spaces will be
added (in general for transforms, not only CJK).


