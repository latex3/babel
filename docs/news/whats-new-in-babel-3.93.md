# What's new in babel 3.93

2023-08-29

## Hebrew counters

The `ini` locales for Hebrew and Yiddish provide a numeral named
`letters`, with the usual form in the modern varieties. However, there
are some variants provided by `babel-hebrew` (the `ldf` language
style), which were absent. Udi Fogiel (`@Udi-Fogiel`) has made them
fully expandable and now they are also available if the locale is
explicitly loaded with `provide` or `\babelprovide` (in other words,
they aren’t available in these locales if loaded on the fly). The limit
is 999999 (for forward compatibility, in case the list is expanded).

They are used with `\localenumeral` and `\localecounter`. See the
`babel` manual for further information on these commands.

* `letters.plain` same as `\hebrewnumeral`, and same as `letters`,
  except values larger than 9999 are valid (but still up to 999999).

* `letters.gershayim` same as `\Hebrewnumeral`.

* `letters.final` same as `\Hebrewnumeralfinal`.

It can be customized with two macros:
* `\BabelHebrewNumeralMarkerSingle`, set by default to geresh.
* `\BabelHebrewNumeralMarkerFinal`, set by default to gershayim.

In case you need different settings for Hebrew and Yiddish, you can
re(set) these values with the language (with `\addto` or
`\AddBabelHook`).

## Chinese calendar

`\babelcalendar` now can convert dates to the Chinese calendar (years
2015-2044). Intercalary months are numbered from 13 to 24, so that in
the current year (2023) it’s 14 , because it comes after the second
month (so, 12 + 2).

Strings in the corresponding locales are defined only in part — cyclic
years, with the CLDR code `UU`, and day names will be added in the next
release.
  
## New locale files

Many locale templates are quite useable, provided captions and dates
are not required (which is a very frequent case, particularly in
ancient languages). So, they will be included in the default `babel`
distribution. This can serve to encourage contributions, too. A warning
will remember they are ‘bare minumum locales’. The locales added in
this release are:

* `southernaltai`
* `divehi`
* `ancientegyptian`
* `egyptianarabic` (aka Masri or Colloquial Egyptian, with tag `arz`,
  not to be confused with the Standard Arabic as spoken in Egypt, with
  tag `ar-EG`).
* `phoenician` (note it’s an RTL language)
* `newari`

Note some of these language are not targeted (at least currently) by
the Unicode CLDR, which is focused on written modern languages. This is
not true for LaTeX.

## Fixes

* Table with arabic text corrupted when trying to colour cells (#252).
* Bold small caps were wrong in some cases (#92). This is not really a
  bug in `babel`, because not a long time ago it worked as expected
  and I was able to reproduce the issue without it. It’s rather an
  improvement in the way fonts are switched with languages (LaTeX
  assumes a single font and a single series tag per family).
* Missing numerals in `sanskrit`.