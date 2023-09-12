# What's new in babel 3.94

2023-09-12

## Chinese dates

Now with the Chinese locales dates with the tradicional calendar can be
printed. By default the year is numeric, but there is a variant with
the sexagenary cycle (the latter is available only if the locale is
loaded with `provide` or `\babelprovide`).

The following two commands print the current date in the Chinese
calendar (numeric and sexagenary). See the `babel` manual for further
info:

```tex
\localedate[calendar=chinese, convert]{\year}{\month}{\day}
\localedate[calendar=chinese, variant=sexagenary, convert]{\year}{\month}{\day}
```

By default, `\today` prints the gregorian date, but this can be changed
with the option `calendar`. Remember setting it always implies the date
is converted:
```tex
\babelprovide[import, calendar=chinese]{babel}
\babelprovide[import, calendar=chinese.sexagenary]{babel}
```

With the first one, `\today` will print something like 二〇二三年七月二十, and
the second one like 癸卯年七月二十.

Note the string can be slightly diferent depending on the locale.

## New locale files

* `javanese` (Latin script)
* `nigerianpidgin`
* `maithiri`
* `wolof`

There are a few new ‘bare minimum locales’ (see [What’s new in babel 3.93](https://latex3.github.io/babel/news/whats-new-in-babel-3.93.html#new-locale-files)):

* `akkadian`
* `balinese`
* `ladino` (Hebrew script)
* `lombard`
* `navajo`
* `oldnorse`

# Hebrew

Thanks to Udi Fogiel, `babel-hebrew` (the original style for 8-bit
engines) is again maintained, and it’s useable directly in TeXlive. The
`ini` files in the `babel` core have been adjusted to reflect correctly
the font encondings for `pdflatex`.

# New transform for kashida

Christian Lück has contributed a new transform, similar to
`kashida.plain`, but with diacritics stacked to the actual base
character and not the kashida extension. Its name is
`kashida.base`, and with evenly inserted tatweels results are
better (even much better) than with `kashida.plain`.

It’s still a set of rules for ‘plain’ Arabic font, with no ligatures.
Some fonts may require aditional transforma to avoid the kashida at
specific places. See

## Fixes

* Babel is not aware of \if@nonlatin conditional from bidi (#256).
* Referencing equations doesn't use custom tags (#260).
* Hyphenation error with Tibetan and lualatex (#261).