# What's new in babel 3.86

(Draft)

## Revised `tabular` and new layout option `notabular`

While all-RTL or all-LTR `tabular`s are more or less straightforward, a
tabular with ‘mixed’ directions is not trivial, because both the column
direction and the text one (in the cells) are governed by `\textdir`. A
new mechanism has been devised, but it have to be necessarily
incomplete, because cell and table border are not separate
entities, but part of the cell text.

<s>A new option `layout=notabular` makes no changes (actually, a minimal
change related to the fact `tabular` is inside a math), so that some
hacks can be applied. For example, with the `array` package:</s> (syntax
liable to change):
```tex
\newcolumntype{L}{>{\textdir TRT}l}
\newcolumntype{R}{>{\textdir TRT}r}
```