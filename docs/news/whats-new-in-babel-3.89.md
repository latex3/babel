# What's new in babel 3.89

**Draft**

## Modifiers

About 10 years ago, a special syntax was devised to pass options to
languages, with a dot-separated list in the following way.
```tex
spanish.notilde.lcroman
```
It was short and clean, but it has a severe disadvantage, namely, it’s
problematic with languages set as class options. Therefore, this
version introduces a new way to set the modifiers for a language, as
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

## Cleaning up some language names

`northernsami` is the preferred name for `samin`, which is
deprecated (it was clearly shortened to fit in the 8-character limit,
and furthermore the Samin are a Javanese people).

`scottishgaelic` is the preferred name for `scottish`; the latter still
makes sense (it’s parallel to `irish`), and therefore, although
discouraged, is not deprecated.

See also
[Locale
naming](https://latex3.github.io/babel/guides/locale-naming.html).

## Documentation

Now there are two PDF files: `babel.pdf` is the user guide, and
`babel-code.pdf` is the code. By default, running `babel.dtx` generates
only the user guide.

