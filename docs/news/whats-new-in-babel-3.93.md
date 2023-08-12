
# What's new in babel 3.93

*Draft*

## Hebrew counters

Converted by Udi Fogiel @Udi-Fogiel (with some retouches) from the
original definitions in `babel-hebrew`. To be used with
`\localenumeral` and `\localecounter`. 

Provisional names. The limit is 999999.

`letters.long` same as `\hebrewnumeral`.

`letters.gershayim` same as `\Hebrewnumeral` 

`letters.final` same as `\Hebrewnumeralfinal`.

They are available in `hebrew` and `yiddish`.

It can be customized with two macros:
* `\BabelHebrewNumeralMarkerSingle`, set by default to geresh.
* `\BabelHebrewNumeralMarkerFinal`, set by default to gershayim.

In case you need different settings for Hebrew and Yiddish, you can
re(set) these values with the language.

## Fixes

* Table with arabic text corrupted when trying to colour cells (#252).
* Bold small caps were wrong in some cases (#92). This is not really a
  bug in `babel`, because I was able to reproduce it without the
  package (in fact, not a long time ago it worked fine), but rather an
  improvement in the way fonts are switched with languages (LaTeX
  assumes a single font and a single series per family).
  
## New locale files

Many locale templates are quite useable, provided captions and dates
are not required (which is a very frequent case). So, they will be
included in the default `babel` distribution. This can serve to encourage
contributions, too. A warning will remember they are ‘bare
minumum locales’. The locales added in this release are:

* `southernaltai`