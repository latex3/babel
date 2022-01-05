# What's new in babel 3.70

*(Development.)*

## Finnish

*(Only luatex.)*

With the transform `prehyphen.nobreak` line breaks just after hyphens
prepended to words are prevented, like in “pakastekaapit ja -arkut”.
More precisely, in the sequence [space or punctuation] + [hyphen] +
[alphanumeric], the hyphen is moved to the beginning of the following
line if necessary. This makes unnecessary to write systematically `"=`
in these situations.

Remember transforms are not available in XeTeX or pdfTeX, which still
require the shorthand. This is a LuaTeX-only feature.

## Fixes for amsmath (luatex)

[Work in progress. Skips below are sometimes too large with the version
currently available. To be improved.]

There are new fixes which will make amsmath useable in the most typical
cases, with labels at the right and at the left; `align` (but not
`align*`), `multline(*)`, `aligned`, `gather` `subequation`, `equation`.

The commands `\text` and `\intertext` has been patched to set the
correct direction (but `\hbox` won’t work as expected).

Fixing `equation` turned out to be much more involved as expected
before the long-standing bugs in `\eqno` and `\leqno`. Not only the the
label may be misplaced with the latter (sometimes), but the
computations for the skip before the equation are reversed (the skip
for `\eqno` is that for `\leqno` and vice versa). So, a dirty trick has
been added to overcome this bug.
