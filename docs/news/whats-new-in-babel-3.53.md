# What's new in babel 3.53

2021-01-26

## Templates in `\setlocalecaption`

`\setlocalecaption` has been extended to recognize the templating mechanism already available in `ini` files for some captions, explained in [What's new in babel 3.48](whats-new-in-babel-3.48.md). It can be used in `ldf` files, too. Usage is simple:
```tex
\setlocalecaption{japanese}{chapter.template}{[[prechapter]] [chapter] [[postchapter]]}
```

This new feature is related to issue [#111](https://github.com/latex3/babel/issues/111)

## `\babelprovide` with `ldf` files

Until now, `\babelprovide` was not allowed without the optional argument when the language was loaded as the `ldf` file. However, now some `ini` files provide additional features which can be useful, like [counters](whats-new-in-babel-3.41.md). Therefore, this restriction has been lifted.

See also: [Using `\babelprovide` to modify or extend locales](../guides/using-babelprovide-to-modify-or-extend-locales.md).

## The language incubator

Creating an `ldf` file for `babel` can be intimidating. Although with `ini` files new locales can be defined more easily, `ldf` ones are still preferred in most cases. In `tools` there is an HTML file providing a simple way to create a simple language definition file, with a (more or less) graphic user interface (GUI) based on JavaScript. It's still rudimentary, but even so you may find it a very convenient way to, at least, start the work.

Currently only the skeleton, the minimal structure, is generated. Anyway, it can be used directly, even if it is not fully adapted to the typographical conventions. 

Remember there are still about 500 `ini` files which can be used as templates if you prefer this mechanism. 

## Changes in `ini` files

Captions for Sinhala, contributed by [Nisal D Bandara](https://github.com/nisalb).

## Fixes

* In some rare cases, a parenthesis was mirrored at the end of math with `bidi=basic`
* Not really a fix, but I started working on `picture` with bidi in lua. While the text is LR, at least the graphical elements are rendered correctly (see issue [#98](https://github.com/latex3/babel/issues/98)).