# What's new in babel 3.89

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
That is, start a package options with |modifiers.| followed by the
language, and then set the modifier list. Note the language is not
selected.

## Deprecations

`\aliasshorthands` 


## Cleaning up some language names

`northernsami` is now the preferred name for `samin`, which is
deprecated (it was clearly shortened to fit in the 8-character limit,
and furthermore the Samin are a Javanese people). `scottishgaelic` is
the preferred name for `scottish`; the latter still makes sense (it’s
parallel to `irish`), and therefore, although discouraged, is not
deprecated.

See also 

