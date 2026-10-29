# What's new in babel 26.15

2026-10-29

## PDF tagging

Development for PDF tagging continues, and this release introduces two new
features.

* Option `phoneme` in `\foreignlanguage`, which provides a
  pronunciation hint for screen readers. The IPA transcription is
  assumed. For example:
  
```tex
\DocumentMetadata{language=en, tagging=on}
\documentclass{article}

% babel-metadata=tagging is temporary and will be removed in the future.
\usepackage[babel-metadata=tagging]{babel}

\begin{document}

They said, “\foreignlanguage[phoneme=ˈβu̯e.nos ˈði.as]{spanish}{Buenos días}.”

\end{document}
```

Note this is a recent feature in PDF tagging, requiring PDF 2.
Current applications may not support it yet. 

* `\selectlanguage` now sets the PDF language, if it differs from the
  main one. Currently it only works in vertical mode, and will issue a
  warning if used outside it.
  
Environments (`selectlanguage` ,`otherlanguage` and `otherlanguage*`)
are still pending. One of the problems is the `\end` very often comes
_before_ the paragraph ends, even if conceptually could go _after_.

If you stick to `\selectlanguage` in vertical mode and
`\foreignlanguage` you should get now a properly tagged PDF in the text
body.

## Plain reorganized

For many years, most of the code was shared between LaTeX and Plain,
but recent advances in LaTeX have made joint maintenance increasingly
complex and cumbersome. Consequently, the code for Plain has been split
from main babel for LaTeX and became essentially frozen. This does not
mean it is unmaintained, and the door remains open to future
improvements.
  
It needs to be cleaned up to remove unnecessary code in Plain. Note
also the engine specific files are still loaded. A few bugs have been
fixed.

## Fixes

* Adapted to the new `calendrica'  API.
* `\footnote` in math with `layout=footnotes` didn’t work correctly.
* Metadata: error if `ru` was loaded with `other-languages' (#450)
* Wrong name for `hyphenrules` in Assamese.




