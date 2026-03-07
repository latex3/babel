# What's new in babel 26.4

**Draft**

## German

<span style="color:red;">⚠</span> **Breaking change.** Please, see the
[German style manual for further
details](https://mirrors.ctan.org/macros/latex/contrib/babel-contrib/german/babel-german.pdf).

Version 3 of the `german` style has been rewritten and now `german`
refers to current German instead of the 1901 variant. This required
some readjustments in the `babel` core. The `ngerman` is preserved
for compatitibility, but it’s use is discouraged (and it doesn’t work
with the `ini` mechanism).

In old documents, you can restore the old behavior for `german` by
requesting before `ngerman`:
```tex
\usepackage[ngerman,german]{babel}
```
or
```tex
\documentclass[ngerman,german]{article}
```

Since now `german` can refer to either the 1901 rules or the modern
German, depending on the presence of `ngerman`, a way to detect if the
tradicional variant is used is by checking if the value of
`\localeinfo*{variant.tag.bcp47}` is `1901` – otherwise, it’s modern
German.

The same applies to `austrian`.

As to `swissgerman`, this name is currently assigned to `de-CH`, but
according to the Unicode CLDR and the IANA registry this name is a
different language with tag `gsw`. This should be sorted out in the
future, but for the moment a warning remembers this fact. With the
`ini` mechanism, `swissgerman` is assigned to `gsw`. The CLDR/IANA name
`swisshighgerman` is recognized in both mechanisms (`ldf` and `ini`).

## Fixes

Lists inside vertical boxes in documents mixing writing directions
where problematic. There is a fix thanks to [Udi
Fogiel](https://github.com/Udi-Fogiel).


