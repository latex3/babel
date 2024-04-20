# French

To typeset French documents it’s strongly advisable using the default
style by Daniel Flipo. It’s very complete and customizable, and
works very well with `pdflatex`, `lualatex` and `xelatex`, although
the last two, ie, the Unicode engines, handle much better the spacing.

Please, refer to its detailed manual for further info, available
[here](https://ctan.org/pkg/babel-french).

## Locale files

Alternatively, and mainly as a secondary language, you can resort to the
`ini` locale files, loaded with `\babelprovide` (or with some of the
`provide` options). Here is an example, which works with `lualatex`:
```tex
\documentclass{article}

\usepackage[spanish]{babel}
\babelprovide[
  transforms = punctuation.space
]{french}

\begin{document}

Español. \foreignlanguage{french}{Je dis: «Et voilà!»}. Español.

\end{document}
```
With `xelatex`, instead of a transform, use a ‘interchar’. Note this
feature requires `import`:
```tex
  interchar = punctuation.space, import
```

You can use both keys, if you like, in documents to be typeset with either
`lualatex` or `xetex`.
