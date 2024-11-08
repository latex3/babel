# Migrating from pdfTeX to LuaTeX

**Draft**

Documents shuld be encoded in UTF-8.

## Fonts

The package `fontenc` must be removed (as well as `inputenc`). With
this single change, languages in the Latin script should work. 

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

## RTL scripts

Migration is a little more involved. See
[Hebrew](https://latex3.github.io/babel/guides/locale-hebrew.html) and
[Arabic](https://latex3.github.io/babel/guides/locale-arabic.html)

## Other languages

There is a list of locales
[here](https://latex3.github.io/babel/guides/index-locale.html). You can
find many minimal documents for `luatex`. 

