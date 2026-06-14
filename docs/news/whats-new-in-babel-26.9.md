# What's new in babel 26.9

2026-06-14

<span style="color:red;">⚠</span> Due to a recent update in the LaTeX
kernel, the behavior of tabular has changed, which may affect the order
of columns. This issue is expected to be resolved within one to two months.
Apologies for the (temporary) inconvenience.

## Metadata

`Babel` now supports the `other-languages` key in `\DocumentMetadata`.
It also recognizes `language` as a synonym for `lang`, which has been
available since Babel version [25.8
(2025-04-29)](https://latex3.github.io/babel/news/whats-new-in-babel-25.8.html).

The basic idea of `other-languages` is the same: you can load the
secondary languages with the corresponding BCP 47 tags. Basically, what
`other-languages` does is to convert something like:
```tex
\DocumentMetadata{language=hi, other-languages={ro-MD, fr, ar-DZ}}
...
\usepackage[english]{babel}
```
to
```tex
\DocumentMetadata{language=hi, other-languages={ro-MD, fr, ar-DZ}}
...
\usepackage[main=hindi, moldavian, french, arabic-algeria, english, hindi]{babel}
```
Note the order with `other-languages`, which precede languages declared
explicitly in `\usepackage`.

The basic tag lookup explained in the `babel` manual is applied here,
so that `fr-Latn-FR` is valid and mapped to `fr`, which is in turn
mapped to `french`, while `en-Latn-US` is mapped to `en-US`, which is
mapped to `american`. This eases the localization of automatically
generated documents.

Remember you can also use lazy loading for secondary languages.

## Improved Breton

There is a new `ldf` file for Breton, revised by Jacques André. The
corresponding caption names in the`ini` file have been modified
accordingly.

## Fixes

* With (Plain) xetex an error was raised (#430).


