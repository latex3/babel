# Migrating from pdfTeX to LuaTeX

**Draft** 

> *Improve this page! Feel free to draft a pull request [on GitHub](https://github.com/latex3/babel/tree/docs/docs)*.

Now the recommended engine is `luatex`, here are some hints on how to
migrate a LaTeX document from `pdftex` to `luatex`.

See also the companion guide [Migrating from XeTeX to
LuaTeX](https://latex3.github.io/babel/guides/migrating-xetex-luatex.html)
if you are switching from XeTeX.

## Input encoding

Documents should be encoded in UTF-8. The package `luainputenc` can
help if you are in a hurry, but its use is discouraged. Many editors
provide options to set the document encoding.

## Fonts

The package `fontenc` must be removed (as well as `inputenc`). With
this single change, languages in the Latin script should work if the
font is the default one. A minimal example in `pdftex` is:
```tex
\documentclass[french]{article}
\usepackage[T1]{fontenc}
\usepackage{babel}

\begin{document}
Plus ça change, plus c'est la même chose!
\end{document}
```
which in `luatex` becomes:
```tex
\documentclass[french]{article}
\usepackage{babel}

\begin{document}
Plus ça change, plus c'est la même chose!
\end{document}
```

If you are using a package to set the font, you may need to replace it
by `fontspec` calls. There is no rule – some of these packages are
compatible and some are not. You can find an example comparing `pdftex`
and `luatex` [here](https://tex.stackexchange.com/a/730422/5735).

With languages in non-Latin encodings, you should assign them a font.
A typical modification would be from:
```tex
\documentclass[bulgarian]{article}
\usepackage[T2A]{fontenc}
\usepackage{babel}
\begin{document}
...
\end{document}
```
to:
```tex
\documentclass[bulgarian]{article}
\usepackage{babel}
\babelfont{rm}{NewComputerModern10}
\begin{document}
...
\end{document}
```
Remember some classes and packages, particularly `beamer`, set the
default family to `sf` instead of `rm`. 

## RTL scripts

Migration is a little more involved. See
[Hebrew](https://latex3.github.io/babel/guides/locale-hebrew.html) and
[Arabic](https://latex3.github.io/babel/guides/locale-arabic.html).

## Other languages

There is a list of locales
[here](https://latex3.github.io/babel/guides/index-locale.html). You can
find many minimal documents for `luatex`.

