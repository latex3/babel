# What's new in babel 3.89

2023-05-11

## Modifiers

About 10 years ago, a special syntax was devised to pass options to
languages, with a dot-separated list in the following way:
```tex
spanish.notilde.lcroman
```
It was short and clean, but it has a severe disadvantage, namely, it’s
problematic with languages set as class options. Therefore, this
version introduces an alternative way to set the modifiers for a language, as
the following example shows:
```tex
\documentclass[spanish]{report}
\usepackage[modifiers.spanish = notilde.lcroman]{babel}
```
That is, start a package options with `modifiers.` followed by the
language, and then set the modifiers list. Note the language is not
selected or loaded with this option.

## Deprecations

`\aliasshorthands` is now
[deprecated](https://latex3.github.io/babel/guides/old-and-deprecated-functions.html)
because it was used very rarely and yielded some unexpected results.

`\SetCase` is deprecated because with a recent change in the LaTeX
kernal it doesn’t any more (an alternative is on the way).

## Cleaning up some language names

`northernsami` is the preferred name for `samin`, which is
deprecated (it was clearly shortened to fit in the 8-character limit,
and furthermore the Samin are a Javanese people).

`scottishgaelic` is the preferred name for `scottish`; the latter still
makes sense (it’s parallel to `irish`, another Goidelic language), and
therefore, although discouraged, is not deprecated.

`acadian` is listed sometimes as a synonymous for `canadien`, but it’s
in fact a variety of French spoken mainly in New Brunswick. Currently,
babel-french support only the names `french` and `acadien`, and `babel`
new reflects this scheme. The former has the BCP 47 tag `fr` and the
latter `fr-x-acadian`.

See also
[Locale
naming](https://latex3.github.io/babel/guides/locale-naming.html).

## Documentation

Now there are two PDF files:
[`babel.pdf`](https://github.com/latex3/babel/blob/main/babel.pdf) is the user guide, and
[`babel-code.pdf`](https://github.com/latex3/babel/blob/main/babel-code.pdf) is the code. By default, running `babel.dtx` generates
only the user guide.

