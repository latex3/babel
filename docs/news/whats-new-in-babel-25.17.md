# What's new in babel 25.17

2025-12-11

## Changes in ‘ini’ locale files

### German

<span style="color:red;">⚠</span> **There is some work in progress
related to how German locales are identified. Stay tuned for future
changes.**

Added a new locale name `austriangerman` (which is, in fact, the name in the
Unicode CLDR, not just `austrian`). Currently it loads the `ini` file.

Also added `german-germany` and `german-de`, which load the current
1996 variant. Currently they load the `ini` files.

### Swiss German

The name `swissgerman` will be temporarily assigned back to Swiss High
German with traditional orthography (tag `de-CH-1901`). If you actually
want Swiss German (tag `gsw`), you have to load it with the ‘ini’
mechanism. For example, as the main language:
```tex
\usepackage[swissgerman, provide=*]{babel}
```
Or as a secondary one (besides lazy loading), with:
```tex
\babelprovide[import]{swissgerman}
```

The IANA registry provides 3 names for the tag `gsw`: Swiss German
(which is the only name in the Unicode CLDR, based on the ‘likely’ tag
`gsw-Latn-CH`), Alemannic and Alsatian. The latter two might be added in
the future.

### Kurdish, Kurmanji

Following the more recent versions of the Unicode CLDR,
`northernkurdish` is now named just `kurdish`, with tag `ku`. The `ini`
files for `kmr` has been merged into the former. Strings for the
Islamic and the Persian calendar has been added, too. The locale names
are `kurdish` (in the Latin script) and `kurdish-arabic`. The names
`northernkurdish` and `northernkurdish-arabic` are also recognized.
They use the `ini` mechanism.

As a special case and mainly for compatibility, `kurmanji` is also
recognized, but it will use the `ldf` mechanism.

### Sanskrit

Added the date in the Gregorian calendar (basic locale in Devanagari).

## Fixes

* `\localenumeral{digits}{<num>}` raised an error in some cases when
  used in a generic way for any locale. Now, if the locale doesn’t
  provide `digits.native`, it falls back to the 0..9 digits.
  
* The vertical spacing in RTL scripts with `\[`...`\]` was broken after
  a LaTeX update.


