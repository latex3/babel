
# What's new in babel 3.93

*Draft*

## Hebrew counters

Converted by Udi Fogiel @Udi-Fogiel (with some retouches) from the
original definitions in `babel-hebrew`. To be used with
`\localenumeral` and `\localecounter`. 

Provisional names.

`letters.long` same as `\hebrewnumeral`.

`letters.gershayim` same as `\Hebrewnumeral` 

`letters.final` same as `\Hebrewnumeralfinal`.

## Fixes

* Table with arabic text corrupted when trying to colour cells (#252).
* Bold small caps was wrong in some cases (#92). This is not really a
  bug in `babel`, because I was able to reproduce it without the
  package (in fact, formely it worked fine), but rather an improvement
  in the way fonts are switched with languages (LaTeX assumes a single
  font per family).
  
## New locale files

Many locale templates are quite useable, provided captions and dates
are not necessary (which a very frequent case). So, they will be
included in the default babel distribution. This can serve to encourage
contributions, too. A warning will remember they are ‘bare
minumum locales’. The locales added in this release are:
* `southernaltai`