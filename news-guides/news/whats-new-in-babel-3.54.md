# What's new in babel 3.54

2021-02-22

The main change in this version is internal, with a refactoring of the loader of `ini` files.

## Graphics

This section applies to `luatex`.

Graphical elements in bidi texts are particularly problematic because they must be LTR while the text can be RTL. In past versions, a basic support for the `picture` environment was provided, which unfortunately stopped working. Support for typical cases with `pgfpicture` (pgf/tikz) was added, too, which still works.

This version improves the situation and now RTL inside a `\put` in the `picture` environment is correctly detected and properly typeset, at least in typical cases. Requires `pict2e`. There is a minor caveat: the contents of `\put` are parsed twice in order to detect if it contains some RTL text, which means global assignments are executed also twice. This is, however, very infrequent.

Support for `pgfpicture` has been improved and now `\tikz` is recognized, too. Here is an example:
```
\documentclass{article}

\usepackage[arabic, provide=*, bidi=basic]{babel}
\babelfont{rm}{FreeSerif}

\usepackage{tikz}
\usetikzlibrary {shapes.misc}

\begin{document}

Hello
\tikz[baseline=(X.base)]
  \node [cross out,draw] (X) {واحد اثنين three أربعة.};

\end{document}
```
![tikz-bidi](https://user-images.githubusercontent.com/1314536/108627618-e3099e80-7456-11eb-8313-c1ab6a477f86.png)

## Fixes

The tentative macro `\foreignlanguage*` stopped working.
