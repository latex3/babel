# What's new in babel 26.16

**Draft**

## Option `mathdigits`

Sometimes using native digits inside math mode comes in handy. With
this option, it is now possible to do so without resorting to
additional packages. Something like `\babelprovide[mathdigits]{hindi}`
means a digit from the script used by Hindi (i.e., Devanagari) will be
rendered using the font for that language (this behavior is similar to
that of `onchar`).

These are true math symbols belonging to the ‘ordinary’ category. This
contrasts with Western digits, which belong to the ‘variable’ category
(so that `\mathit` prints italic numbers). However, many scripts lack
true italics, and supporting variable digits would require combining
fonts and math families, too. (This does not preclude extending the
feature to other variants in the future, though doing so would require
`unicode-math`.)

By default, digits are assigned globally to the ‘normal font’ for the
corresponding language (applied `\AtBeginDocument`). An optional value
can be passed to assign a different family; for example,
`\babelprovide[mathdigits=sf]{uyghur}`. Note no conversion is done: to
use native digits you have to write them explicitly, while Western
digits are kept.

Here is an example:
```tex
\documentclass{article}

\usepackage[english]{babel}

\babelprovide[import, mathdigits]{thai}
\babelfont[thai]{rm}{Norasi}

\babelprovide[import, mathdigits]{arabic}
\babelfont[arabic]{rm}{Amiri}

\babelprovide[import, mathdigits=sf]{chinese}
\babelfont[chinese]{sf}{FandolHei}

\begin{document}

\begin{array}{c}
45^2 + 17^3 = 6938\\
๔๕^๒ + ๑๗^๓ = ๖๙๓๘\\
٤٥^٢ + ١٧^٣ = ٦٩٣٨\\
四五^二 + 一七^三 = 六九三八
\end{array}

\end{document}
```

![](../media/mathdigits.jpg)
