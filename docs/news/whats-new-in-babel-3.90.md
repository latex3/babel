# What's new in babel 3.90

2023-06-26

## Casing

The option `casing` introduced experimentally in version 3.88 should
now work. Here is again the explanation.

There is a new option in `\babelprovide` to set the default casing
rules in a few languages. They are (from `interface3.pdf`):
* Armenian: `yiwn`, which maps U+0587 to capital ech and yiwn on
  uppercasing.
* German: `eszett`, which maps the lowercase *Eszett* to a *großes
  Eszett*.
* Greek: `iota`, which converts the *ypogegrammeni* (subscript muted
  iota) to capital iota when uppercasing.

For example:
```tex
\usepackage[greek]{babel}
\babelprovide[casing=iota]{greek}
```

New in 3.90 is a couple of macros devised as a high level interface for
declaring case mappings, based on the locale name as declared by or
with `babel`. They are the equivalent of `\DeclareUppercaseMapping` and
`\DeclareLowercaseMapping` (see `usrguide.pdf`):

* `\BabelUppercaseMapping{<locale name>}{<codepoint>}{<output>}`
* `\BabelLowercaseMapping{<locale name>}{<codepoint>}{<output>}`

(A variant for titlecasing will follow soon.)

The purpose is twofold:
* A user-friendly way to declare them, because often BCP 47 tags are not
  known (and sometimes can be complex).
* If for some reason the tag changes (eg, you decide to tag `english`
  as `en-001` instead of `en-US`), the new mappings will be still
  assigned to that language.
  
For example:
```
\BabelUppercaseMapping{medievallatin}{`u}{V}
```

There are still some rough edges when declaring a mapping with the `x`
extension, or when two `babel` languages share the same BCP 47 tag. These
issues will be sorted out in future releases. 

## Improvements in Arabic justification

Kashida are built by adding the Unicode ARABIC TATWEEL character. Now a
limit can be set with a parameter as illustrated:
```
\directlua{  Babel.arabic.kashida_limit = 3 }
```
`0` means ‘add nothing’ and `-1` means ‘no limit’.

The width of the glyph can vary greatly with the font, and so does the
exact value of this parameter (which is currently global).

## Locale names

* The names `classiclatin` and `ecclesiasticlatin` are now discouraged
  because `classicallatin` and `ecclesiasticallatin` are more correct.
* Since `farsi` is a well established name for `persian`, it's now a
  valid synonymous, although the preferred name is still the latter (as
  per the CLDR).
* `vietnam` was deprecated and now finally has been removed.

## Fixes

* `\normalsfcodes` had a wrong value in heads and foots, which meant the
  text was sometimes badly spaced after dots, colons and the like
  (#240).
* Line breaking was sometimes prevented when switching the text
  direction (#213).



