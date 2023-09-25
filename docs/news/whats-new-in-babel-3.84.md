# What's new in babel 3.84

2022-12-26

<span style="color:red;">⚠</span> There are some issues with the
new `\MakeUppercase` and `\MakeLowercase`. For further details, see:

[Localization of \MakeUppercase and \MakeLowercase broken](https://github.com/latex3/babel/issues/189)

## Encodings with pdftex and `\babelprovide`

With `pdftex`, when a language is loaded with `\babelprovide`,
selectors now set the font encoding based on the list provided when
loading `fontenc`. This mechanism has been devised primarily for
words or short texts in other languages loaded on the fly (although
with RTL scripts you still need `bidi=default`), and it’s, in some
sense, the equivalent in this engine of the automatic setting of
language and script in `xetex` and `luatex`.

Not all scripts have an associated encoding, so this feature works
only with Latin, Cyrillic, Greek, Arabic, Hebrew, Cherokee, Armenian,
and Georgian, provided a suitable font is found. 

The rules for the assigned encoding are the following:
* If the valid encodings as set in the `ini` file contain the main font
  encoding, use this one.
* Otherwise, select the first encoding set in the `ini` file and
  declared with `fontenc`.
  
You can customize its behaviour in several ways:
* Disable it altogether with `\babeladjust{ select.encoding = off }`.
* Modify the encoding list in the `ini` file with
  `identification/encodings =` in `\babelprovide` with a space
  separated list, by order of preference (of course, this is not
  possible with locales loaded on the fly).
  
A simple example is the following:
```tex
\documentclass{article}

\usepackage[T2A, LGR, T5, T1]{fontenc}
\usepackage[english]{babel}

\begin{document}

English \foreignlanguage{greek}{Ελληνικά} English.

\selectlanguage{bulgarian}

Български \foreignlanguage{vietnamese}{Tiếng Việt} български.

\end{document}
```

![Encodings](../media/auto-encoding.png)

## New option `layout=counters*` 

The option `layout=counters` redefines some counters for they to be
printed in the correct order in RTL text. Sadly, the added macros are
written to the `idx` files, which break `makeindex`. The value
`counters*` (with a star) attempts to remove the conflicting macros in
the following way:
* `pdftex` and `xetex` pre-expand `\thepage` just before it’s written by
  the output routine, so that the expanded string doesn’t include them.
  This means the modified `\thepage` is written to the `aux` file, too.
* `luatex` processes the string to be written with a callback, only when
  `\indexentry` is present.

## Fixes

* With `select.write = omit` the main language wasn’t selected
  in the aux file.
* Incorrect link box in end of line if it is preceded by a non-Arabic
  character (#207). Note that, very often, directions in labels and the
  like must be overriden, because the bidi algorithm knows nothing
  about the ‘semantics’ of text. This can be done with `\mbox` and
  `\babelsublr`.