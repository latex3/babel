# What's new in babel 26.15

(dev)

## PDF tagging

Development for PDF tagging continues, and this release introduces two new
features.

* Option `phoneme` in `\foreignlanguage`, which provides a pronunciation hint for
  screen readers. For example:
```tex
\DocumentMetadata{language=en, tagging=on, uncompress}
\documentclass{article}

% babel-metadata=tagging is temporary and will be removed in the future.
\usepackage[babel-metadata=tagging]{babel}

\begin{document}

They said, “\foreignlanguage[phoneme=ˈβu̯e.nos ˈði.as]{spanish}{Buenos días}.”

\end{document}
```
Note this is a recent feature in PDF tagging requiring PDF 2.
Current applications may not support it yet.

* `\selectlanguage` now set the PDF language, if it differs from the
  main one. Currently it only works in vertical mode, and will ussue a
  warning if used outside it.

## Plain reorganized

For many years, most of the code was shared between LaTeX and Plain,
but recent advances in LaTeX have made joint maintenance increasingly
complex. Consequently, the code for Plain will be split from main babel
for LaTeX and essentially frozen. This does not mean it is
unmaintained, and the door remains open to future improvements.
  
It needs to be cleaned up to remove unnecessary code in Plain. Note
also the engine specific files are still loaded.



