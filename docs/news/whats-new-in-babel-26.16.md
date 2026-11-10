# What's new in babel 26.16

2026-11-10

## Option `mathdigits`

Sometimes using native digits inside math mode comes in handy. With
this option, it’s now possible to do so without resorting to
additional packages. Something like `\babelprovide[mathdigits]{hindi}`
means a digit from the script used by Hindi (i.e., Devanagari) will be
rendered using the font for that language (this behavior is similar to
that of `onchar`).

These are true math symbols belonging to the ‘ordinary’ category (see
_The TeXbook_, p. 154). This contrasts with Western digits, which belong
to the ‘variable’ category (so that `\mathit` prints italic numbers).
The reason for this behavior is twofold: many scripts lack true
italics, and supporting variable digits would require combining fonts
and math families, too. (This does not preclude extending the feature
to other variants in the future, though doing so would require
`unicode-math`.)

By default, digits are assigned globally to the ‘normal font’ for the
corresponding language (done `\AtBeginDocument`). An optional value
can be passed to assign a different family; for example,
`\babelprovide[mathdigits=sf]{uyghur}`. Note no conversion is done — to
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

% Remember you can declare new families with \babelfont:
\babelprovide[import, mathdigits=hei]{chinese}
\babelfont[chinese]{hei}{FandolHei}

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

Languages providing native digits are `algerianarabic`, `arabic`,
`assamese`, `bangla`, `bhojpuri`, `bodo`, `burmese`, `cantonese`,
`centralkurdish`, `chinese`, `dogri`, `dzongkha`, `gujarati`,
`haryanvi`, `hindi`, `hmongnjua`, `kannada`, `kashmiri`, `khmer`,
`konkani`, `korean`, `lao`, `maithili`, `malayalam`, `manipuri`,
`marathi`, `mazanderani`, `nepali`, `northernluri`, `odia`, `pashto`,
`persian`, `punjabi`, `rajasthani`, `sanskrit`, `santali`, `sindhi`,
`tamil`, `telugu`, `thai`, `tibetan`, `urdu`, `uyghur`, `vai`.

## Locales

* The `ini` locale file for **Western Frisian** (`westernfrisian`, tag `fy`)
has been extended by [Erik Nijenhuis](https://github.com/MacLotsen). A
couple of [transforms (`diaeresis.hyphen` and
`uacute.hyphen`)](https://github.com/latex3/babel/pull/453#issuecomment-6746541064)
have been included, but they are tentative.

There are also improvements in the locale files for **Romanian**, by 
Mihai Pește, and **Kazakh**, by Berik I. Tuleuov.

## Other changes

* `\DocumentMetadata` + `babel` + `newtxmath` result in exceeded TeX capacity (#451).

* The old good `\babel@save` didn’t work correctly with protected
  commands based on `\protect` and the space trick. Now, the original
  straightforward implementation with `\let` has been replaced with a
  new one based on `\DeclareCommandCopy`.
