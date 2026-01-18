# What's new in babel 26.1

2026-01-18

## Kashida

The transform `kashida.base` has been much improved with the addition
of rules for explicit tatweels and a wider range of diacritics. The tatweel
priority is set to 300, that is, lower than the rest of characters,
which have priority 500.

In addition, very short lines are better dealt with.

## `\otherlanguage*`

Many text commands also have a ‘declaration’ form. An example is
`\textit` and `\itshape`. The declaration forms can be appropriate in
some cases, but `\foreignlanguage` lacked a convenient declaration
equivalent. An option was the `otherlanguage*` environment, but it was
somewhat inconvenient, and using it as a macro required a low level
hack. Now, `\otherlanguage*` is a valid syntax. A minimal document
showing it in action is:
```tex
\documentclass[english]{article}

\usepackage{babel}
\babelfont[tamil, yoruba]{rm}{FreeSerif}[Color=blue]

\begin{document}

Text {\otherlanguage*{tamil}தமிழ்} text.

Text {\otherlanguage*[date]{yoruba}\today} text

\end{document}
```
Avoid using several of them inside a group.

![](../media/otherlanguage-star.png)

## Transforms

With `\babelposthyphenation` there was the possibility to declare rules
like `{a}$`, but not with `\babelprehyphenation` (you had to write
`(){a}()$`). Now the former syntax is allowed in both transforms.

## Option `nofiles` for `\selectlanguage`

The fact `\selectlanguage` writes to the auxiliary files may break the
vertical spacing. While the global `select.write` flag (via
`\babeladjust`) already offers `shift`, `keep`, or `omit` behaviors, you
can now bypass file writing on a case-by-case basis using the new
`nofiles` optional argument, as follows:
```tex
\selectlanguage[nofiles]{<language>}
```
Think of it as a kind of temporary `\nofiles`, just for this command.

## Bug Fixes

* Regression: Extra `\else` and `\fi` since document last built (#382).
* Unbalanced dir nodes (#384).
* Interaction of `onchar` option with tagging and unicode-math causes
  cryptic errors (#386).
* Regression: Wrong text direction in `tabular` if `array` is loaded
  after `babel` (#387).

